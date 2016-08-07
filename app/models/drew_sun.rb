#encoding utf-8
#住商不動產
class DrewSun
  BASE_HOST = "http://www.hbhousing.com.tw"
  WEB_HOST  = "http://www.hbhousing.com.tw/buyHouse/"
  API_HOST  = "http://www.hbhousing.com.tw/ajax/search_result.asp"
  CITY = [
    {code:"3", name:"台北市"},{code:"4", name:"新北市"},
    {code:"2", name:"基隆市"},{code:"1", name:"宜蘭縣"},
    {code:"5", name:"桃園市"},{code:"6", name:"新竹市"},
    {code:"7", name:"新竹縣"},{code:"8", name:"苗栗縣"},
    {code:"9", name:"台中市"},{code:"11", name:"南投縣"},
    {code:"12", name:"彰化縣"},{code:"13", name:"雲林縣"},
    {code:"14", name:"嘉義市"},{code:"15", name:"嘉義縣"},
    {code:"16", name:"台南市"},{code:"18", name:"高雄市"},
    {code:"20", name:"屏東縣"},{code:"21", name:"台東縣"},
    {code:"22", name:"花蓮縣"},{code:"23", name:"澎湖縣"},
    {code:"24", name:"金門縣"},{code:"25", name:"連江縣"}
  ]

  def self.get_house_data(filter_buy)
    data = []

    page_count = get_page_count(filter_buy)
    
    page_count.times do |idx|
      request_url   = get_request_url(filter_buy, (idx+1), API_HOST)
      uri           = URI.parse(URI.escape(request_url))
      http          = Net::HTTP.new(uri.host, uri.port);
      request       = Net::HTTP::Get.new(uri.request_uri)
      raw_response  = http.request(request).body

      doc = Nokogiri::HTML(raw_response)

      doc.xpath('//div').each do |div|
        next if div['class'] != 'item'
        case_name = div.css('div').find{|d| d['class']=="name"}.css('a').first.text rescue "ERROR"
        cover     = div.css('div').find{|d| d['class']=="ImageCoverWrap"}.css('img').first['src'] rescue ""
        link      = BASE_HOST + div.css('div').find{|d| d['class']=="ImageCoverWrap"}.css('a').first['href'] rescue ""
        price     = div.css('ol').first.css('span')[2].text
        info = HouseInfo.new("住商", case_name, Monetize.parse(price).amount.to_i, cover)
        tag_house_info = div.css('ol').first rescue nil
        next if tag_house_info.nil?
        info.range_area   = tag_house_info.css("li")[1].css("span").first.text
        info.range_area   = info.range_area.gsub("建坪：","")
        info.range_area   = info.range_area.gsub("坪","")
        # sample 大廈│二房 
        room_type_string  = tag_house_info.css("li")[3].text.gsub(/\s+/, "").split("│")[1]
        info.rooms_count  = get_rooms_type_count(room_type_string, "房")
        info.space_count  = get_rooms_type_count(room_type_string, "廳")
        info.toilet_count = get_rooms_type_count(room_type_string, "衛")
        info.rooms_info   = room_type_string
        info.park_info    = (div.css('ol').last.css('li')[6]['class'] == 'has') ? "Y" : "N"
        # info.info         = case_info
        info.floor        = tag_house_info.css("li")[6].text.gsub("樓層:","")
        info.building_age = -999
        info.link         = link

        data.push(info)
      end
    end

    return data
  end

  private 
    def self.get_rooms_type_count(org_string, target_word)
      result = 0
      word_number = org_string[(org_string.index(target_word)-1), 1] rescue 0
      case word_number
      when "一"; result = 1;
      when "二"; result = 2;
      when "三"; result = 3;
      when "四"; result = 4;
      when "五"; result = 5;
      when "六"; result = 6;
      when "七"; result = 7;
      when "八"; result = 8;
      end
      result = word_number.to_i if result == 0
      return result
    end

    def self.get_page_count(filter_buy)
      request_url   = get_request_url(filter_buy, 1, WEB_HOST)
      uri           = URI.parse(URI.escape(request_url))
      http          = Net::HTTP.new(uri.host, uri.port);
      request       = Net::HTTP::Get.new(uri.request_uri)
      raw_response  = http.request(request).body

      raw_response = raw_response.gsub("\r\n    ","")
      raw_response = raw_response.gsub("\r\n","")
      raw_response = raw_response.gsub("\"","'")
      raw_response = raw_response.gsub("\t","")
      raw_response = URI.unescape(raw_response)

      doc   = Nokogiri::HTML(raw_response)
      total = doc.css(".totalwrap>.count").last.text.to_i rescue 20
      page_count = (total/20) + (total%(total/20)!=0 ? 1 : 0) rescue 1

      return page_count
    end

    def self.get_city_code(city_name)
      DrewSun::CITY.each do |city|
        return city[:code] if city[:name] == city_name
      end
      return ""
    end

    def self.get_district_zipcode(district_name)
      SinYi::CITY.each do |city|
        city[:districts].each do |dist|
          return dist[:code].rpartition('-').first if dist[:name] == district_name
        end
      end
    end

    def self.get_request_url(filter_buy, page_order, host)
      city        = get_city_code(filter_buy.city)
      district    = get_district_zipcode(filter_buy.district)
      use_type    = 1 # 1住宅 2店面 3辦公 4廠房 5住商 6車位 7土地 8其他 C農舍
      house_type  = "3"
      params = "?q=2^#{use_type}^#{city}^#{district}"+
               "^#{filter_buy.price_from}_#{filter_buy.price_to}"+ #Price Range
               "^P0_0^1^#{house_type}"+ #House Type
               "^#{filter_buy.age_from}_#{filter_buy.age_to}"+ #Building Age Range
               "^2_3_4^0^0_0^0_0^0^0^0^0^^6^1^#{page_order}^1&rlg=0"
      url = host + params
      return url
    end
    #Sample
    #q=2     #買屋
    # ^1      #1住宅 2店面 3辦公 4廠房 5住商 6車位 7土地 8其他 C農舍
    # ^4      #4新北市
    # ^244    #244 林口
    # ^0_1000 #0~1000萬
    # ^P0_0
    # ^1
    # ^2_3_4  #2無電梯公寓 3電梯大樓 4透天 5別墅 11土地 12其他
    # ^0_15   #屋齡
    # ^0_0^0^0_0^0_0^0^0^0^0^^6^1^1^1
end