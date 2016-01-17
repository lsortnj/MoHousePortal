#encoding: utf-8
# 信義房屋
class SinYi
  CITY = [
    {name: "台北市", code: "Taipei-city", cityid: "1" ,districts:[
        {code: "104-zip", name: "中山區"},{code: "106-zip", name: "大安區"},
        {code: "100-zip", name: "中正區"},{code: "114-zip", name: "內湖區"},
        {code: "111-zip", name: "士林區"},{code: "116-zip", name: "文山區"},
        {code: "110-zip", name: "信義區"},{code: "112-zip", name: "北投區"},
        {code: "105-zip", name: "松山區"},{code: "103-zip", name: "大同區"},
        {code: "108-zip", name: "萬華區"},{code: "115-zip", name: "南港區"}
      ]},
    {name: "新北市", code: "NewTaipei-city"  , cityid: "7" ,districts:[
        {code: "220-zip", name: "板橋區"},{code: "231-zip", name: "新店區"},
        {code: "235-zip", name: "中和區"},{code: "241-zip", name: "三重區"},
        {code: "234-zip", name: "永和區"},{code: "242-zip", name: "新莊區"},
        {code: "221-zip", name: "汐止區"},{code: "251-zip", name: "淡水區"},
        {code: "247-zip", name: "蘆洲區"},{code: "244-zip", name: "林口區"},
        {code: "236-zip", name: "土城區"},{code: "238-zip", name: "樹林區"},
        {code: "243-zip", name: "泰山區"},{code: "248-zip", name: "五股區"},
        {code: "249-zip", name: "八里區"},{code: "252-zip", name: "三芝區"},
        {code: "239-zip", name: "鶯歌區"},{code: "237-zip", name: "三峽區"},
        {code: "208-zip", name: "金山區"},{code: "222-zip", name: "深坑區"},
        {code: "223-zip", name: "石碇區"},{code: "224-zip", name: "瑞芳區"},
        {code: "226-zip", name: "平溪區"},{code: "227-zip", name: "雙溪區"},
        {code: "228-zip", name: "貢寮區"},{code: "232-zip", name: "坪林區"},
        {code: "233-zip", name: "烏來區"},{code: "207-zip", name: "萬里區"},
        {code: "253-zip", name: "石門區"}
      ]},
    {name: "桃園市", code: "Taoyuan-city"    , cityid: "4" ,districts:[
        {code: "330-zip", name: "桃園區"},{code: "320-zip", name: "中壢區"},
        {code: "324-zip", name: "平鎮區"},{code: "325-zip", name: "龍潭區"},
        {code: "337-zip", name: "大園區"},{code: "336-zip", name: "復興區"},
        {code: "335-zip", name: "大溪區"},{code: "334-zip", name: "八德區"},
        {code: "333-zip", name: "龜山區"},{code: "328-zip", name: "觀音區"},
        {code: "327-zip", name: "新屋區"},{code: "326-zip", name: "楊梅區"},
        {code: "338-zip", name: "蘆竹區"}
      ]},
    {name: "新竹市", code: "Hsinchu-city"    , cityid: "21" ,districts:[
        {code: "300-zip", name: "新竹市"}
      ]},
    {name: "新竹縣", code: "Hsinchu-county"  , cityid: "5" ,districts:[
        {code: "302-zip", name: "竹北市"},{code: "314-zip", name: "北埔鄉"},
        {code: "313-zip", name: "尖石鄉"},{code: "312-zip", name: "橫山鄉"},
        {code: "311-zip", name: "五峰鄉"},{code: "310-zip", name: "竹東鎮"},
        {code: "308-zip", name: "寶山鄉"},{code: "307-zip", name: "芎林鄉"},
        {code: "306-zip", name: "關西鎮"},{code: "305-zip", name: "新埔鎮"},
        {code: "304-zip", name: "新豐鄉"},{code: "303-zip", name: "湖口鄉"},
        {code: "315-zip", name: "峨眉鄉"}
      ]},
    {name: "基隆市", code: "Keelung-city"    , cityid: "26" ,districts:[
        {code: "200-zip", name: "仁愛區"}, {code: "201-zip", name: "信義區"}, 
        {code: "202-zip", name: "中正區"}, {code: "203-zip", name: "中山區"}, 
        {code: "204-zip", name: "安樂區"}, {code: "205-zip", name: "暖暖區"}, 
        {code: "206-zip", name: "七堵區"}
      ]},
    {name: "台中市", code: "Taichung-city"   , cityid: "9" ,districts:[
        {code: "407-zip", name: "西屯區"}, {code: "403-zip", name: "西區"}, 
        {code: "408-zip", name: "南屯區"}, {code: "406-zip", name: "北屯區"}, 
        {code: "404-zip", name: "北區"}, {code: "402-zip", name: "南區"}, 
        {code: "400-zip", name: "中區"}, {code: "401-zip", name: "東區"}, 
        {code: "428-zip", name: "大雅區"}, {code: "429-zip", name: "神岡區"},
        {code: "432-zip", name: "大肚區"},{code: "433-zip", name: "沙鹿區"},
        {code: "434-zip", name: "龍井區"},{code: "435-zip", name: "梧棲區"},
        {code: "436-zip", name: "清水區"},{code: "437-zip", name: "大甲區"},
        {code: "438-zip", name: "外埔區"},{code: "427-zip", name: "潭子區"},
        {code: "426-zip", name: "新社區"},{code: "411-zip", name: "太平區"},
        {code: "412-zip", name: "大里區"},{code: "413-zip", name: "霧峰區"},
        {code: "414-zip", name: "烏日區"},{code: "420-zip", name: "豐原區"},
        {code: "421-zip", name: "后里區"},{code: "422-zip", name: "石岡區"},
        {code: "423-zip", name: "東勢區"},{code: "424-zip", name: "和平區"},
        {code: "439-zip", name: "大安區"}
      ]},
    {name: "彰化縣", code: "Changhua-county" , cityid: "24" ,districts:[
        {code: "500-zip", name: "彰化市"}, {code: "515-zip", name: "大村鄉"}, 
        {code: "516-zip", name: "埔鹽鄉"}, {code: "520-zip", name: "田中鎮"}, 
        {code: "521-zip", name: "北斗鎮"}, {code: "522-zip", name: "田尾鄉"}, 
        {code: "523-zip", name: "埤頭鄉"}, {code: "524-zip", name: "溪州鄉"}, 
        {code: "525-zip", name: "竹塘鄉"}, {code: "526-zip", name: "二林鎮"},
        {code: "527-zip", name: "大城鄉"},{code: "528-zip", name: "芳苑鄉"},
        {code: "514-zip", name: "溪湖鎮"},{code: "513-zip", name: "埔心鄉"},
        {code: "502-zip", name: "芬園鄉"},{code: "503-zip", name: "花壇鄉"},
        {code: "504-zip", name: "秀水鄉"},{code: "505-zip", name: "鹿港鎮"},
        {code: "506-zip", name: "福興鄉"},{code: "507-zip", name: "線西鄉"},
        {code: "508-zip", name: "和美鎮"},{code: "509-zip", name: "伸港鄉"},
        {code: "510-zip", name: "員林鎮"},{code: "511-zip", name: "社頭鄉"},
        {code: "512-zip", name: "永靖鄉"},{code: "530-zip", name: "二水鄉"}
      ]},
    {name: "苗栗縣", code: "Miaoli-county"   , cityid: "17" ,districts:[
        {code: "360-zip", name: "苗栗市"}, {code: "350-zip", name: "竹南鎮"}, 
        {code: "368-zip", name: "西湖鄉"}, {code: "367-zip", name: "三義鄉"}, 
        {code: "366-zip", name: "銅鑼鄉"}, {code: "365-zip", name: "泰安鄉"}, 
        {code: "364-zip", name: "大湖鄉"}, {code: "363-zip", name: "公館鄉"}, 
        {code: "362-zip", name: "頭屋鄉"}, {code: "361-zip", name: "造橋鄉"},
        {code: "358-zip", name: "苑裡鎮"},{code: "357-zip", name: "通霄鎮"},
        {code: "356-zip", name: "後龍鎮"},{code: "354-zip", name: "獅潭鄉"},
        {code: "353-zip", name: "南庄鄉"},{code: "352-zip", name: "三灣鄉"},
        {code: "351-zip", name: "頭份鎮"},{code: "369-zip", name: "卓蘭鎮"}
      ]},
    {name: "南投縣", code: "Nantou-county"   , cityid: "15" ,districts:[
        {code: "540-zip", name: "南投市"}, {code: "557-zip", name: "竹山鎮"}, 
        {code: "556-zip", name: "信義鄉"}, {code: "555-zip", name: "魚池鄉"}, 
        {code: "553-zip", name: "水里鄉"}, {code: "552-zip", name: "集集鎮"}, 
        {code: "551-zip", name: "名間鄉"}, {code: "546-zip", name: "仁愛鄉"}, 
        {code: "545-zip", name: "埔里鎮"}, {code: "544-zip", name: "國姓鄉"},
        {code: "542-zip", name: "草屯鎮"}, {code: "541-zip", name: "中寮鄉"},
        {code: "558-zip", name: "鹿谷鄉"}
      ]},
    {name: "雲林縣", code: "Yunlin-county"   , cityid: "20" ,districts:[
        {code: "640-zip", name: "斗六市"}, {code: "646-zip", name: "古坑鄉"}, 
        {code: "647-zip", name: "莿桐鄉"}, {code: "648-zip", name: "西螺鎮"}, 
        {code: "649-zip", name: "二崙鄉"}, {code: "651-zip", name: "北港鎮"}, 
        {code: "652-zip", name: "水林鄉"}, {code: "653-zip", name: "口湖鄉"}, 
        {code: "654-zip", name: "四湖鄉"}, {code: "630-zip", name: "斗南鎮"},
        {code: "643-zip", name: "林內鄉"},{code: "638-zip", name: "麥寮鄉"},
        {code: "637-zip", name: "崙背鄉"},{code: "636-zip", name: "台西鄉"},
        {code: "635-zip", name: "東勢鄉"},{code: "634-zip", name: "褒忠鄉"},
        {code: "633-zip", name: "土庫鎮"},{code: "632-zip", name: "虎尾鎮"},
        {code: "631-zip", name: "大埤鄉"},{code: "655-zip", name: "元長鄉"}
      ]},
    {name: "高雄市", code: "Kaohsiung-city"  , cityid: "3" ,districts:[
        {code: "807-zip", name: "三民區"}, {code: "813-zip", name: "左營區"}, 
        {code: "802-zip", name: "苓雅區"}, {code: "804-zip", name: "鼓山區"}, 
        {code: "800-zip", name: "新興區"}, {code: "806-zip", name: "前鎮區"}, 
        {code: "801-zip", name: "前金區"}, {code: "811-zip", name: "楠梓區"}, 
        {code: "812-zip", name: "小港區"}, {code: "803-zip", name: "鹽埕區"},
        {code: "805-zip", name: "旗津區"}, {code: "831-zip", name: "大寮區"},
        {code: "832-zip", name: "林園區"},{code: "833-zip", name: "鳥松區"},
        {code: "840-zip", name: "大樹區"},{code: "842-zip", name: "旗山區"},
        {code: "843-zip", name: "美濃區"},{code: "844-zip", name: "六龜區"},
        {code: "845-zip", name: "內門區"},{code: "846-zip", name: "杉林區"},
        {code: "847-zip", name: "甲仙區"},{code: "851-zip", name: "茂林區"},
        {code: "830-zip", name: "鳳山區"},{code: "829-zip", name: "湖內區"},
        {code: "814-zip", name: "仁武區"},{code: "815-zip", name: "大社區"},
        {code: "820-zip", name: "岡山區"},{code: "821-zip", name: "路竹區"},
        {code: "822-zip", name: "阿蓮區"},{code: "823-zip", name: "田寮區"},
        {code: "824-zip", name: "燕巢區"},{code: "825-zip", name: "橋頭區"},
        {code: "826-zip", name: "梓官區"},{code: "827-zip", name: "彌陀區"},
        {code: "828-zip", name: "永安區"},{code: "852-zip", name: "茄萣區"}
      ]},
    {name: "台南市", code: "Tainan-city"     , cityid: "6" ,districts:[
        {code: "701-zip", name: "東區"}, {code: "704-zip", name: "北區"}, 
        {code: "700-zip", name: "中西區"}, {code: "708-zip", name: "安平區"}, 
        {code: "709-zip", name: "安南區"}, {code: "702-zip", name: "南區"}, 
        {code: "733-zip", name: "東山區"}, {code: "732-zip", name: "白河區"}, 
        {code: "731-zip", name: "後壁區"}, {code: "730-zip", name: "新營區"},
        {code: "731-zip", name: "後壁區"}, {code: "730-zip", name: "新營區"},
        {code: "727-zip", name: "北門區"},{code: "726-zip", name: "學甲區"},
        {code: "734-zip", name: "六甲區"},{code: "735-zip", name: "下營區"},
        {code: "736-zip", name: "柳營區"},{code: "737-zip", name: "鹽水區"},
        {code: "741-zip", name: "善化區"},{code: "742-zip", name: "大內區"},
        {code: "743-zip", name: "山上區"},{code: "744-zip", name: "新市區"},
        {code: "725-zip", name: "將軍區"},{code: "724-zip", name: "七股區"},
        {code: "710-zip", name: "永康區"},{code: "711-zip", name: "歸仁區"},
        {code: "712-zip", name: "新化區"},{code: "713-zip", name: "左鎮區"},
        {code: "714-zip", name: "玉井區"},{code: "715-zip", name: "楠西區"},
        {code: "716-zip", name: "南化區"},{code: "717-zip", name: "仁德區"},
        {code: "718-zip", name: "關廟區"},{code: "719-zip", name: "龍崎區"},
        {code: "720-zip", name: "官田區"},{code: "721-zip", name: "麻豆區"},
        {code: "722-zip", name: "佳里區"},{code: "723-zip", name: "西港區"},
        {code: "745-zip", name: "安定區"}
      ]},
    {name: "嘉義市", code: "Chiayi-city"     , cityid: "22" ,districts:[
        {code: "600-zip", name: "嘉義市"}
      ]},
    {name: "嘉義縣", code: "Chiayi-county"   , cityid: "23" ,districts:[
        {code: "602-zip", name: "番路鄉"}, {code: "624-zip", name: "義竹鄉"}, 
        {code: "623-zip", name: "溪口鄉"}, {code: "622-zip", name: "大林鎮"}, 
        {code: "621-zip", name: "民雄鄉"}, {code: "616-zip", name: "新港鄉"}, 
        {code: "615-zip", name: "六腳鄉"}, {code: "614-zip", name: "東石鄉"}, 
        {code: "613-zip", name: "朴子市"}, {code: "612-zip", name: "太保市"},
        {code: "611-zip", name: "鹿草鄉"},{code: "608-zip", name: "水上鄉"},
        {code: "607-zip", name: "大埔鄉"},{code: "606-zip", name: "中埔鄉"},
        {code: "605-zip", name: "阿里山鄉"},{code: "604-zip", name: "竹崎鄉"},
        {code: "603-zip", name: "梅山鄉"},{code: "625-zip", name: "布袋鎮"}
      ]},
    {name: "屏東縣", code: "Pingtung-county" , cityid: "16" ,districts:[
        {code: "900-zip", name: "屏東市"}, {code: "925-zip", name: "新埤鄉"}, 
        {code: "926-zip", name: "南州鄉"}, {code: "927-zip", name: "林邊鄉"}, 
        {code: "928-zip", name: "東港鎮"}, {code: "929-zip", name: "琉球鄉"}, 
        {code: "931-zip", name: "佳冬鄉"}, {code: "932-zip", name: "新園鄉"}, 
        {code: "940-zip", name: "枋寮鄉"}, {code: "941-zip", name: "枋山鄉"},
        {code: "942-zip", name: "春日鄉"},{code: "943-zip", name: "獅子鄉"},
        {code: "944-zip", name: "車城鄉"},{code: "945-zip", name: "牡丹鄉"},
        {code: "946-zip", name: "恆春鎮"},{code: "924-zip", name: "崁頂鄉"},
        {code: "923-zip", name: "萬巒鄉"},{code: "922-zip", name: "來義鄉"},
        {code: "901-zip", name: "三地門鄉"},{code: "902-zip", name: "霧台鄉"},
        {code: "903-zip", name: "瑪家鄉"},{code: "904-zip", name: "九如鄉"},
        {code: "905-zip", name: "里港鄉"},{code: "906-zip", name: "高樹鄉"},
        {code: "907-zip", name: "鹽埔鄉"},{code: "908-zip", name: "長治鄉"},
        {code: "909-zip", name: "麟洛鄉"},{code: "911-zip", name: "竹田鄉"},
        {code: "912-zip", name: "內埔鄉"},{code: "913-zip", name: "萬丹鄉"},
        {code: "920-zip", name: "潮州鎮"},{code: "921-zip", name: "泰武鄉"},
        {code: "947-zip", name: "滿州鄉"}
      ]},
    {name: "宜蘭縣", code: "Yilan-county"    , cityid: "8" ,districts:[
        {code: "260-zip", name: "宜蘭市"}, {code: "270-zip", name: "蘇澳鎮"}, 
        {code: "269-zip", name: "冬山鄉"}, {code: "268-zip", name: "五結鄉"}, 
        {code: "267-zip", name: "大同鄉"}, {code: "266-zip", name: "三星鄉"}, 
        {code: "265-zip", name: "羅東鎮"}, {code: "264-zip", name: "員山鄉"}, 
        {code: "263-zip", name: "壯圍鄉"}, {code: "262-zip", name: "礁溪鄉"},
        {code: "261-zip", name: "頭城鎮"}, {code: "272-zip", name: "南澳鄉"}
      ]},
    {name: "花蓮縣", code: "Hualien-county"  , cityid: "13" ,districts:[
        {code: "970-zip", name: "花蓮市"}, {code: "982-zip", name: "卓溪鄉"}, 
        {code: "981-zip", name: "玉里鎮"}, {code: "979-zip", name: "萬榮鄉"}, 
        {code: "978-zip", name: "瑞穗鄉"}, {code: "977-zip", name: "豐濱鄉"}, 
        {code: "976-zip", name: "光復鄉"}, {code: "975-zip", name: "鳳林鎮"}, 
        {code: "974-zip", name: "壽豐鄉"}, {code: "973-zip", name: "吉安鄉"},
        {code: "972-zip", name: "秀林鄉"}, {code: "971-zip", name: "新城鄉"},
        {code: "983-zip", name: "富里鄉"}
      ]},
    {name: "台東縣", code: "Taitung-county"  , cityid: "10" ,districts:[
        {code: "950-zip", name: "台東市"}, {code: "965-zip", name: "大武鄉"}, 
        {code: "964-zip", name: "金峰鄉"}, {code: "963-zip", name: "太麻里鄉"}, 
        {code: "962-zip", name: "長濱鄉"}, {code: "961-zip", name: "成功鎮"}, 
        {code: "959-zip", name: "東河鄉"}, {code: "958-zip", name: "池上鄉"}, 
        {code: "957-zip", name: "海端鄉"}, {code: "956-zip", name: "關山鎮"},
        {code: "955-zip", name: "鹿野鄉"}, {code: "954-zip", name: "卑南鄉"},
        {code: "953-zip", name: "延平鄉"},{code: "952-zip", name: "蘭嶼鄉"},
        {code: "951-zip", name: "綠島鄉"},{code: "966-zip", name: "達仁鄉"}
      ]},
    {name: "澎湖縣", code: "Penghu-county"   , cityid: "25" ,districts:[
        {code: "880-zip", name: "馬公市"}, {code: "881-zip", name: "西嶼鄉"}, 
        {code: "882-zip", name: "望安鄉"}, {code: "883-zip", name: "七美鄉"}, 
        {code: "884-zip", name: "白沙鄉"}, {code: "885-zip", name: "湖西鄉"}
      ]},
    {name: "金門縣", code: "Kinmen-county"   , cityid: "14" ,districts:[
        {code: "890-zip", name: "金沙鎮"}, {code: "891-zip", name: "金湖鎮"}, 
        {code: "892-zip", name: "金寧鄉"}, {code: "893-zip", name: "金城鎮"}, 
        {code: "894-zip", name: "烈嶼鄉"}, {code: "896-zip", name: "烏坵鄉"}
      ]}
  ]

  HOST = "http://buy.sinyi.com.tw"

  def self.get_house_data(filter_buy)
    data        = []
    request_url   = get_request_url(filter_buy, 0)
    uri           = URI.parse(URI.escape(request_url))
    http          = Net::HTTP.new(uri.host, uri.port);
    request       = Net::HTTP::Get.new(uri.request_uri)
    page_count    = get_page_count(request_url) 

    page_count.times do |order|
      request_url = get_request_url(filter_buy, order)

      #信義一定要有cookies資料
      resp, gg_data = http.get(request_url, nil)
      cookie = resp.response['set-cookie']
      headers = {
        'Cookie' => cookie,
        'Referer' => 'http://www.sinyi.com.tw/',
        'Content-Type' => 'application/x-www-form-urlencoded'
      }

      raw_resp, gg_data = http.post(request_url, "", headers)

      raw_html  = raw_resp.body
      
      doc = Nokogiri::HTML(raw_html)

      doc.xpath('//div').each do |div|
        next if div.attr('class') != "search_result_item"
        #案件名稱
        case_name = div.css('span').find{|s| s.attr('class')=="item_title" }.text rescue nil
        next if case_name.nil?
        #價格
        price = div.css('div').find{|d| d['class']=="price_new"}.css('span').find{|s| s['class']=='num'}.text rescue nil
        price = Monetize.parse(price).amount.to_i
        next if price.nil?
        #地址 型態 車位 等資訊
        info = div.css('div').find{|d| d['class']=='detail_line1' }.css('span').map{|s| s.text.gsub('/s+/','')}.join(" ") rescue nil
        next if info.nil?
        case_name += "  "+info
        cover = div.css('img').first['src'] rescue ""
        link  = div.css('a').first['href']

        build_range=0; range_area=0; building_age=0; floor=""; rooms_count=0; space_count=0; toilet_count=0; gg=""

        div.css('div').select{|d| d['class']=='detail_line2'}.each_with_index do |line2, idx1|
          span_num = line2.css('span').select{|s| s['class']=='num'}
          if idx1 == 0
            span_num.each_with_index do |sub_info, idx2|
              build_range = sub_info.text if idx2==0 #建坪
              range_area  = sub_info.text if idx2==1 #主建物 + 陽台
              building_age= sub_info.text if idx2==2 #年份
              floor       = sub_info.text if idx2==3 #樓層
            end
          else
            span_num.each_with_index do |sub_info, idx3|
              rooms_count  = sub_info.text if idx3==0 #房
              space_count  = sub_info.text if idx3==1 #廳
              toilet_count = sub_info.text if idx3==2 #衛
              gg           = sub_info.text if idx3==3 #室
            end
          end
        end

        info = HouseInfo.new("信義", case_name, price, cover)
          info.range_area   = range_area.to_f
          info.rooms_count  = rooms_count
          info.space_count  = space_count
          info.toilet_count = toilet_count
          info.rooms_info   = "#{rooms_count}房#{space_count}廳#{toilet_count}衛#{gg}室"
          info.park_info    = ""
          info.info         = ""
          info.floor        = floor
          info.building_age = building_age
          info.link         = HOST+link
        
          data.push(info)
      end
    end

    return data
  end

  def self.get_city_url(city_name_tw)
    SinYi::CITY.each do |city|
      return city[:code] if city[:name] == city_name_tw
    end
    return ""
  end

  def self.get_district_url(district_name_tw)
    SinYi::CITY.each do |city|
      city[:districts].each do |dist|
        return dist[:code] if dist[:name] == district_name_tw
      end
    end
    return ""
  end

  private
    def self.get_page_count(request_url)
      uri           = URI.parse(URI.escape(request_url))
      http          = Net::HTTP.new(uri.host, uri.port);
      request       = Net::HTTP::Get.new(uri.request_uri)

      #信義一定要有cookies資料
      resp, gg_data = http.get(request_url, nil)
      cookie = resp.response['set-cookie']
      headers = {
        'Cookie' => cookie,
        'Referer' => 'http://www.sinyi.com.tw/',
        'Content-Type' => 'application/x-www-form-urlencoded'
      }

      raw_resp, gg_data = http.post(request_url, "", headers)

      raw_html  = raw_resp.body
      
      doc = Nokogiri::HTML(raw_html)
      doc.xpath('//ul').each do |ul|
        next if ul.attr('id') != "search_pagination"
        return ul.css('li').last.text.to_i rescue 0
      end
      return 0
    end

    def self.get_request_url(filter_buy, page_order=0)
      city          = get_city_url(filter_buy.city)
      district      = get_district_url(filter_buy.district)
      page          = page_order==0 ? "index.html" : "#{page_order}.html"
      building_age  = "#{filter_buy.age_from}-#{filter_buy.age_to}-year"
      url = HOST+"/list/#{city}/#{district}/"+
            "#{filter_buy.price_from}-#{filter_buy.price_to}-price/"+
            "house-use/#{building_age}/#{page}"
      return url
    end

end