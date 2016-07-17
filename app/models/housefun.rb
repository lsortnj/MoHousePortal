#encoding: utf-8
#好房網
class Housefun < ActiveRecord::Base

  API_HOST = "https://buy.housefun.com.tw/ashx/buy/new/GetBuyList.ashx"

  PARAMS_FILTER_DATA = {
      :"Limit"          => "1000"     ,:"page"           => "1",
      :"Sequence"       => "SEQUP"    ,:"SearchMode"     => "1",
      :"County01"       => "新北市"    ,:"District01"     => "林口區",
      :"County02"       => ""         ,:"District02"     => "",
      :"County03"       => ""         ,:"District03"     => "",
      :"MRTLineID01"    => ""         ,:"MRTStationID01" => "",
      :"MRTLineID02"    => ""         ,:"MRTStationID02" => "",
      :"MRTLineID03"    => ""         ,:"MRTStationID03" => "",
      :"TGsn01"         => ""         ,:"TGsn02"         => "",
      :"TGsn03"         => ""         ,:"TGType01"       => "",
      :"TGType02"       => ""         ,:"TGType03"       => "",
      :"BuildingID"     => ""         ,:"BuildingName"   => "",
      :"Purpose"        => "K"        ,:"PriceID"        => "6",
      :"Price"          => "100-1000" ,:"Keyword"        => "",
      :"TGTypeList"     => ""         ,:"Tag"            => "",
      :"RoomID"         => ""         ,:"Room"           => "",
      :"RegAreaID"      => ""         ,:"RegArea"        => "",
      :"CaseType"       => "L", # L:電梯大樓, K:無電梯公寓, N:別墅, M:透天厝, S:套房
      :"UnitPriceID"    => ""         ,:"UnitPrice"      => "",
      :"BuildAgeID"     => "6"        ,:"BuildAge"       => "5-15",
      :"ParkingType"    => ""         ,:"CaseFloor"      => "",
      :"Brand"          => ""         ,:"SID"            => "",
      :"ObjectID"       => ""         ,:"ObjectKind"     => "",
      :"WebAgentID"     => ""     #104161990
  }

  def self.get_house_data(filter_buy)
    uri           = URI.parse(Housefun::API_HOST)
    uri.query     = URI.encode_www_form(gen_params(filter_buy))
    http          = Net::HTTP.new(uri.host, uri.port); http.use_ssl = true
    request       = Net::HTTP::Get.new(uri.request_uri)
    raw_response  = http.request(request).body
    
    processed_res = raw_response.gsub!("angular.callbacks._6(","")
    processed_res = processed_res.gsub!(");","")
    response      = JSON.parse(processed_res) rescue []
    json_arr      = JSON.parse(response["Data"]["ListObjects"]) rescue []

    house_data = []
    json_arr.each do |h|
      info = HouseInfo.new("好房網", h["CaseName"], Monetize.parse(h["Price"]).amount.to_i, h["CoverPic"])
      info.range_area   = h["RegArea"].to_f
      info.rooms_count  = h["Patterns"].gsub(/\s+/, "")[0,1]
      info.space_count  = h["Patterns"].gsub(/\s+/, "")[5,1]
      info.toilet_count = h["Patterns"].gsub(/\s+/, "")[7,1]
      info.rooms_info   = h["Patterns"]
      info.floor        = h["Floor"]
      info.park_info    = h["ParkingType"]
      info.info         = ""
      info.building_age = h["BuildAge"].to_f
      info.link         = "http://buy.housefun.com.tw/buy/house/"+h["HFID"]
      house_data.push(info)
    end
    return house_data
  end

private
  def self.gen_params(filter_buy)
    filtes_data = Housefun::PARAMS_FILTER_DATA
    filtes_data[:"County01"]   = filter_buy.city
    filtes_data[:"District01"] = filter_buy.district
    filtes_data[:"Price"]      = "#{filter_buy.price_from}-#{filter_buy.price_to}"
    filtes_data[:"BuildAge"]   = filter_buy.age_from==0 ? "-#{filter_buy.age_to}" : "#{filter_buy.age_from}-#{filter_buy.age_to}"
    params = {
      :"callback"=>"angular.callbacks._6",
      :"RequestPackage"=>{
        :"Method" => "INQUIRE",
        :"Data"   => filtes_data
      }.to_json.to_s
    }
    return params
  end

end
