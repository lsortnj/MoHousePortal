#encoding: utf-8
class YungChing

  HOST = "http://buy.yungching.com.tw"

  def self.get_yung_ching_data(city, district, price_from=100, price_to=1000)
    data        = []
    request_url = get_request_url(city, district, price_from, price_to)
    page_count  = get_page_count(request_url)
    page_count.times do |order|
      request_url   = get_request_url(city, district)
      request_url   += "?pg=#{order}" if order >= 2
      uri           = URI.parse(URI.escape(request_url))
      http          = Net::HTTP.new(uri.host, uri.port);
      request       = Net::HTTP::Get.new(uri.request_uri)
      raw_response  = http.request(request).body
      
      doc = Nokogiri::HTML(raw_response)
      
      doc.xpath('//li').each do |li|
        next if li.attr('class') != "m-list-item"
        case_name_a = li.css('a').find{|a| a['class']=='item-img ga_click_trace'} rescue nil
        next if case_name_a.nil?
        #案件名稱， 連結， 首圖
        case_name = case_name_a['title']
        case_link = case_name_a['href']
        next if !data.find{|h| h.link==HOST+case_link}.nil?
        cover = case_name_a.css('img')[0]['src']
        case_info_ul = li.css('ul').find{|ul| ul['class']=='item-info-detail'} rescue nil
        next if case_info_ul.nil?
        case_info = ""; range_area = ""; rooms_info= ""; park_info= ""; floor=""
        #坪數，房數，車位
        case_info_ul.css('li').each_with_index do |info, idx|
         case_info+=info.text+","
         floor      = info.text if idx == 2
         range_area = info.text if idx == 5
         rooms_info = info.text if idx == 6
         park_info  = info.text if idx == 8
        end
        case_info = case_info.gsub!("\n","")
        price = li.css('span').find{|s| s['class']=='price-num'}.text rescue nil
        next if price.nil?

        info = HouseInfo.new("永慶", case_name, Monetize.parse(price).amount.to_i, cover)
        info.range_area   = (range_area.gsub!("建物 ","").gsub!("坪","")).to_f
        info.rooms_count  = rooms_info.gsub(/\s+/, "")[0,1]
        info.space_count  = rooms_info.gsub(/\s+/, "")[5,1]
        info.toilet_count = rooms_info.gsub(/\s+/, "")[7,1]
        info.rooms_info   = rooms_info
        info.park_info    = park_info
        info.info         = case_info
        info.floor        = floor
        info.link         = HOST+case_link
      
        data.push(info)
      end
    end
    
    return data
  end


  private 
    def self.get_page_count(request_url)
      uri           = URI.parse(URI.escape(request_url))
      http          = Net::HTTP.new(uri.host, uri.port);
      request       = Net::HTTP::Get.new(uri.request_uri)
      raw_response  = http.request(request).body
      
      doc = Nokogiri::HTML(raw_response)
      doc.xpath('//ul').each do |ul|
        next if ul.attr('class') != "m-pagination-bd"
        
        if ul.css('li').last.css('a').first['href'] == ""
          #只有一頁
          li = ul.css('li').find{|l| l['class']=='is-active'} 
        else
          li = ul.css('li').last
        end

        return li.css('a').first['href'].to_s[-1, 1].to_i rescue 0
      end
      return 0
    end

    def self.get_request_url(city, district, price_from=0, price_to=1200)
      url = HOST+"/region/住宅_p/#{city}-#{district}_c/#{price_from}-#{price_to}_price/5-10_age/電梯大廈_type/y_park/"
      return url

    end

end