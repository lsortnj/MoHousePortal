#encoding: utf-8
class Housefun < ActiveRecord::Base

  API_HOST = "http://buy.housefun.com.tw/ashx/buy/new/GetBuyList.ashx"

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
      :"Purpose"        => "K"        ,:"PriceID"        => "",
      :"Price"          => ""         ,:"Keyword"        => "",
      :"TGTypeList"     => ""         ,:"Tag"            => "",
      :"RoomID"         => ""         ,:"Room"           => "",
      :"RegAreaID"      => ""         ,:"RegArea"        => "",
      :"CaseType"       => "L", # L:電梯大樓, K:無電梯公寓, N:別墅, M:透天厝, S:套房
      :"UnitPriceID"    => "3"        ,:"UnitPrice"      => "-30",
      :"BuildAgeID"     => "6"        ,:"BuildAge"       => "5-15",
      :"ParkingType"    => "Y"        ,:"CaseFloor"      => "",
      :"Brand"          => ""         ,:"SID"            => "",
      :"ObjectID"       => ""         ,:"ObjectKind"     => "",
      :"WebAgentID"     => ""     #104161990
  }

  def self.get_housefun_data(city, district)
    uri           = URI.parse(Housefun::API_HOST)
    uri.query     = URI.encode_www_form(gen_params(city, district))
    http          = Net::HTTP.new(uri.host, uri.port);
    request       = Net::HTTP::Get.new(uri.request_uri)
    raw_response  = http.request(request).body

    processed_res = raw_response.gsub!("angular.callbacks._6(","")
    processed_res = processed_res.gsub!(");","")
    response      = JSON.parse(processed_res) rescue []
    json_arr      = JSON.parse(response["Data"]["ListObjects"]) rescue []

    house_data = []
    json_arr.each do |h|
      info = HouseInfo.new
      info.source     = "好房網"
      info.name       = h["CaseName"]
      info.price      = h["Price"]
      info.range_area = h["RegArea"]
      info.rooms_info = h["Patterns"]
      info.park_info  = "車位:"+h["ParkingType"]
      info.info       = ""
      info.link       = "http://buy.housefun.com.tw/buy/house/"+h["HFID"]
      info.cover      = h["CoverPic"]
      house_data.push(info)
    end
    return house_data
  end

private
  def self.gen_params(city, district)
    filtes_data = Housefun::PARAMS_FILTER_DATA
    filtes_data[:"County01"]   = city
    filtes_data[:"District01"] = district
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
