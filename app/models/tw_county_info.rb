#encoding: utf-8
class TwCountyInfo
  INFO_HASH = [
      {name: "台北市", code: "0000", districts: [
        {cityCode: "0000", name: "北投區", code: "9"},{cityCode: "0000", name: "士林區", code: "8"},
        {cityCode: "0000", name: "大同區", code: "2"},{cityCode: "0000", name: "中山區", code: "3"},
        {cityCode: "0000", name: "松山區", code: "4"},{cityCode: "0000", name: "內湖區", code: "10"},
        {cityCode: "0000", name: "南港區", code: "11"},{cityCode: "0000", name: "萬華區", code: "6"},
        {cityCode: "0000", name: "中正區", code: "1"},{cityCode: "0000", name: "大安區", code: "5"},
        {cityCode: "0000", name: "信義區", code: "7"},{cityCode: "0000", name: "文山區", code: "12"}
      ]},
      {name: "新北市", code: "0001", districts: [
        {cityCode: "0001", name: "中和區", code: "27"},{cityCode: "0001", name: "永和區", code: "26"},
        {cityCode: "0001", name: "板橋區", code: "15"},{cityCode: "0001", name: "新店區", code: "23"},
        {cityCode: "0001", name: "新莊區", code: "33"},{cityCode: "0001", name: "土城區", code: "28"},
        {cityCode: "0001", name: "三重區", code: "32"},{cityCode: "0001", name: "蘆洲區", code: "36"},
        {cityCode: "0001", name: "五股區", code: "37"},{cityCode: "0001", name: "泰山區", code: "34"},
        {cityCode: "0001", name: "林口區", code: "35"},{cityCode: "0001", name: "鶯歌區", code: "31"},
        {cityCode: "0001", name: "三峽區", code: "29"},{cityCode: "0001", name: "樹林區", code: "30"},
        {cityCode: "0001", name: "八里區", code: "38"},{cityCode: "0001", name: "淡水區", code: "39"},
        {cityCode: "0001", name: "三芝區", code: "40"},{cityCode: "0001", name: "石門區", code: "41"},
        {cityCode: "0001", name: "金山區", code: "14"},{cityCode: "0001", name: "萬里區", code: "13"},
        {cityCode: "0001", name: "汐止區", code: "16"},{cityCode: "0001", name: "平溪區", code: "20"},
        {cityCode: "0001", name: "瑞芳區", code: "19"},{cityCode: "0001", name: "雙溪區", code: "21"},
        {cityCode: "0001", name: "貢寮區", code: "22"},{cityCode: "0001", name: "石碇區", code: "18"},
        {cityCode: "0001", name: "深坑區", code: "17"},{cityCode: "0001", name: "坪林區", code: "24"},
        {cityCode: "0001", name: "烏來區", code: "25"}
      ]},
      {name: "基隆市", code: "0002", districts: [
        {cityCode: "0002", name: "七堵區", code: "48"},{cityCode: "0002", name: "安樂區", code: "46"},
        {cityCode: "0002", name: "中正區", code: "44"},{cityCode: "0002", name: "暖暖區", code: "47"},
        {cityCode: "0002", name: "信義區", code: "43"},{cityCode: "0002", name: "仁愛區", code: "42"},
        {cityCode: "0002", name: "中山區", code: "45"}
      ]},
      {name: "宜蘭縣", code: "0004", districts: [
        {cityCode: "0004", name: "宜蘭市", code: "53"},{cityCode: "0004", name: "羅東鎮", code: "58"},
        {cityCode: "0004", name: "蘇澳鎮", code: "63"},{cityCode: "0004", name: "頭城鎮", code: "54"},
        {cityCode: "0004", name: "三星鄉", code: "59"},{cityCode: "0004", name: "礁溪鄉", code: "55"},
        {cityCode: "0004", name: "冬山鄉", code: "62"},{cityCode: "0004", name: "員山鄉", code: "57"},
        {cityCode: "0004", name: "壯圍鄉", code: "56"},{cityCode: "0004", name: "五結鄉", code: "61"},
        {cityCode: "0004", name: "大同鄉", code: "60"},{cityCode: "0004", name: "南澳鄉", code: "64"}
      ]},
      {name: "新竹市", code: "0006", districts: [
        {cityCode: "0006", name: "東區", code: "67"},{cityCode: "0006", name: "北區", code: "68"},
        {cityCode: "0006", name: "香山區", code: "69"}
      ]},
      {name: "新竹縣", code: "0007", districts: [
        {cityCode: "0007", name: "竹北市", code: "70"},{cityCode: "0007", name: "竹東鎮", code: "77"},
        {cityCode: "0007", name: "新埔鎮", code: "73"},{cityCode: "0007", name: "關西鎮", code: "74"},
        {cityCode: "0007", name: "湖口鄉", code: "71"},{cityCode: "0007", name: "新豐鄉", code: "72"},
        {cityCode: "0007", name: "寶山鄉", code: "76"},{cityCode: "0007", name: "芎林鄉", code: "75"},
        {cityCode: "0007", name: "橫山鄉", code: "79"},{cityCode: "0007", name: "北埔鄉", code: "81"},
        {cityCode: "0007", name: "峨眉鄉", code: "82"},{cityCode: "0007", name: "尖石鄉", code: "80"},
        {cityCode: "0007", name: "五峰鄉", code: "78"}
      ]},
      {name: "桃園市", code: "0008", districts: [
        {cityCode: "0008", name: "桃園區", code: "89"},{cityCode: "0008", name: "中壢區", code: "83"},
        {cityCode: "0008", name: "平鎮區", code: "84"},{cityCode: "0008", name: "八德區", code: "91"},
        {cityCode: "0008", name: "楊梅區", code: "86"},{cityCode: "0008", name: "大溪區", code: "92"},
        {cityCode: "0008", name: "蘆竹區", code: "95"},{cityCode: "0008", name: "龜山區", code: "90"},
        {cityCode: "0008", name: "龍潭區", code: "85"},{cityCode: "0008", name: "大園區", code: "94"},
        {cityCode: "0008", name: "觀音區", code: "88"},{cityCode: "0008", name: "新屋區", code: "87"},
        {cityCode: "0008", name: "復興區", code: "93"}
      ]},
      {name: "苗栗縣", code: "0009", districts: [
        {cityCode: "0009", name: "苗栗市", code: "104"},{cityCode: "0009", name: "頭份鎮", code: "97"},
        {cityCode: "0009", name: "竹南鎮", code: "96"},{cityCode: "0009", name: "後龍鎮", code: "101"},
        {cityCode: "0009", name: "苑裡鎮", code: "103"},{cityCode: "0009", name: "卓蘭鎮", code: "113"},
        {cityCode: "0009", name: "通霄鎮", code: "102"},{cityCode: "0009", name: "造橋鄉", code: "105"},
        {cityCode: "0009", name: "南庄鄉", code: "99"},{cityCode: "0009", name: "三灣鄉", code: "98"},
        {cityCode: "0009", name: "三義鄉", code: "111"},{cityCode: "0009", name: "大湖鄉", code: "108"},
        {cityCode: "0009", name: "公館鄉", code: "107"},{cityCode: "0009", name: "獅潭鄉", code: "100"},
        {cityCode: "0009", name: "頭屋鄉", code: "106"},{cityCode: "0009", name: "銅鑼鄉", code: "110"},
        {cityCode: "0009", name: "泰安鄉", code: "109"},{cityCode: "0009", name: "西湖鄉", code: "112"}
      ]},
      {name: "台中市", code: "0010", districts: [
        {cityCode: "0010", name: "西屯區", code: "120"},{cityCode: "0010", name: "南屯區", code: "121"},
        {cityCode: "0010", name: "北屯區", code: "119"},{cityCode: "0010", name: "北區", code: "118"},
        {cityCode: "0010", name: "西區", code: "117"},{cityCode: "0010", name: "中區", code: "114"},
        {cityCode: "0010", name: "東區", code: "115"},{cityCode: "0010", name: "南區", code: "116"},
        {cityCode: "0010", name: "沙鹿區", code: "136"},{cityCode: "0010", name: "龍井區", code: "137"},
        {cityCode: "0010", name: "大肚區", code: "135"},{cityCode: "0010", name: "烏日區", code: "125"},
        {cityCode: "0010", name: "霧峰區", code: "124"},{cityCode: "0010", name: "大里區", code: "123"},
        {cityCode: "0010", name: "太平區", code: "122"},{cityCode: "0010", name: "豐原區", code: "126"},
        {cityCode: "0010", name: "石岡區", code: "128"},{cityCode: "0010", name: "新社區", code: "131"},
        {cityCode: "0010", name: "東勢區", code: "129"},{cityCode: "0010", name: "和平區", code: "130"},
        {cityCode: "0010", name: "后里區", code: "127"},{cityCode: "0010", name: "神岡區", code: "134"},
        {cityCode: "0010", name: "大雅區", code: "133"},{cityCode: "0010", name: "潭子區", code: "132"},
        {cityCode: "0010", name: "大甲區", code: "140"},{cityCode: "0010", name: "大安區", code: "142"},
        {cityCode: "0010", name: "外埔區", code: "141"},{cityCode: "0010", name: "清水區", code: "139"},
        {cityCode: "0010", name: "梧棲區", code: "138"}
      ]},
      {name: "彰化縣", code: "0012", districts: [
        {cityCode: "0012", name: "彰化市", code: "143"},{cityCode: "0012", name: "花壇鄉", code: "145"},
        {cityCode: "0012", name: "芬園鄉", code: "144"},{cityCode: "0012", name: "和美鎮", code: "150"},
        {cityCode: "0012", name: "鹿港鎮", code: "147"},{cityCode: "0012", name: "伸港鄉", code: "151"},
        {cityCode: "0012", name: "線西鄉", code: "149"},{cityCode: "0012", name: "福興鄉", code: "148"},
        {cityCode: "0012", name: "秀水鄉", code: "146"},{cityCode: "0012", name: "二林鎮", code: "165"},
        {cityCode: "0012", name: "溪湖鎮", code: "156"},{cityCode: "0012", name: "北斗鎮", code: "160"},
        {cityCode: "0012", name: "芳苑鄉", code: "167"},{cityCode: "0012", name: "埔鹽鄉", code: "158"},
        {cityCode: "0012", name: "埔心鄉", code: "155"},{cityCode: "0012", name: "大城鄉", code: "166"},
        {cityCode: "0012", name: "竹塘鄉", code: "164"},{cityCode: "0012", name: "埤頭鄉", code: "162"},
        {cityCode: "0012", name: "溪州鄉", code: "163"},{cityCode: "0012", name: "員林市", code: "152"},
        {cityCode: "0012", name: "田中鎮", code: "159"},{cityCode: "0012", name: "大村鄉", code: "157"},
        {cityCode: "0012", name: "永靖鄉", code: "154"},{cityCode: "0012", name: "社頭鄉", code: "153"},
        {cityCode: "0012", name: "田尾鄉", code: "161"},{cityCode: "0012", name: "二水鄉", code: "168"}
      ]},
      {name: "南投縣", code: "0013", districts: [
        {cityCode: "0013", name: "信義鄉", code: "179"},{cityCode: "0013", name: "南投市", code: "169"},
        {cityCode: "0013", name: "草屯鎮", code: "171"},{cityCode: "0013", name: "埔里鎮", code: "173"},
        {cityCode: "0013", name: "竹山鎮", code: "180"},{cityCode: "0013", name: "集集鎮", code: "176"},
        {cityCode: "0013", name: "名間鄉", code: "175"},{cityCode: "0013", name: "中寮鄉", code: "170"},
        {cityCode: "0013", name: "國姓鄉", code: "172"},{cityCode: "0013", name: "水里鄉", code: "177"},
        {cityCode: "0013", name: "魚池鄉", code: "178"},{cityCode: "0013", name: "仁愛鄉", code: "174"},
        {cityCode: "0013", name: "鹿谷鄉", code: "181"}
      ]},
      {name: "嘉義市", code: "0014", districts: [
        {cityCode: "0014", name: "東區", code: "183"},{cityCode: "0014", name: "西區", code: "184"}
      ]},
      {name: "嘉義縣", code: "0015", districts: [
        {cityCode: "0015", name: "朴子市", code: "194"},{cityCode: "0015", name: "太保市", code: "193"},
        {cityCode: "0015", name: "布袋鎮", code: "202"},{cityCode: "0015", name: "六腳鄉", code: "196"},
        {cityCode: "0015", name: "東石鄉", code: "195"},{cityCode: "0015", name: "義竹鄉", code: "201"},
        {cityCode: "0015", name: "鹿草鄉", code: "192"},{cityCode: "0015", name: "水上鄉", code: "191"},
        {cityCode: "0015", name: "大林鎮", code: "199"},{cityCode: "0015", name: "溪口鄉", code: "200"},
        {cityCode: "0015", name: "梅山鄉", code: "186"},{cityCode: "0015", name: "新港鄉", code: "197"},
        {cityCode: "0015", name: "民雄鄉", code: "198"},{cityCode: "0015", name: "竹崎鄉", code: "187"},
        {cityCode: "0015", name: "中埔鄉", code: "189"},{cityCode: "0015", name: "番路鄉", code: "185"},
        {cityCode: "0015", name: "大埔鄉", code: "190"},{cityCode: "0015", name: "阿里山鄉", code: "188"}
      ]},
      {name: "雲林縣", code: "0016", districts: [
        {cityCode: "0016", name: "斗六市", code: "212"},{cityCode: "0016", name: "土庫鎮", code: "206"},
        {cityCode: "0016", name: "虎尾鎮", code: "205"},{cityCode: "0016", name: "麥寮鄉", code: "211"},
        {cityCode: "0016", name: "台西鄉", code: "209"},{cityCode: "0016", name: "東勢鄉", code: "208"},
        {cityCode: "0016", name: "褒忠鄉", code: "207"},{cityCode: "0016", name: "四湖鄉", code: "221"},
        {cityCode: "0016", name: "元長鄉", code: "222"},{cityCode: "0016", name: "口湖鄉", code: "220"},
        {cityCode: "0016", name: "北港鎮", code: "218"},{cityCode: "0016", name: "西螺鎮", code: "216"},
        {cityCode: "0016", name: "斗南鎮", code: "203"},{cityCode: "0016", name: "水林鄉", code: "219"},
        {cityCode: "0016", name: "崙背鄉", code: "210"},{cityCode: "0016", name: "二崙鄉", code: "217"},
        {cityCode: "0016", name: "莿桐鄉", code: "215"},{cityCode: "0016", name: "林內鄉", code: "213"},
        {cityCode: "0016", name: "大埤鄉", code: "204"},{cityCode: "0016", name: "古坑鄉", code: "214"}
      ]},
      {name: "台南市", code: "0017", districts: [
        {cityCode: "0017", name: "安南區", code: "230"},{cityCode: "0017", name: "北區", code: "228"},
        {cityCode: "0017", name: "中西區", code: "224"},{cityCode: "0017", name: "安平區", code: "229"},
        {cityCode: "0017", name: "南區", code: "226"},{cityCode: "0017", name: "東區", code: "225"},
        {cityCode: "0017", name: "永康區", code: "231"},{cityCode: "0017", name: "仁德區", code: "238"},
        {cityCode: "0017", name: "歸仁區", code: "232"},{cityCode: "0017", name: "關廟區", code: "239"},
        {cityCode: "0017", name: "龍崎區", code: "240"},{cityCode: "0017", name: "七股區", code: "245"},
        {cityCode: "0017", name: "佳里區", code: "243"},{cityCode: "0017", name: "麻豆區", code: "242"},
        {cityCode: "0017", name: "善化區", code: "257"},{cityCode: "0017", name: "大內區", code: "258"},
        {cityCode: "0017", name: "玉井區", code: "235"},{cityCode: "0017", name: "楠西區", code: "236"},
        {cityCode: "0017", name: "西港區", code: "244"},{cityCode: "0017", name: "安定區", code: "261"},
        {cityCode: "0017", name: "新市區", code: "260"},{cityCode: "0017", name: "山上區", code: "259"},
        {cityCode: "0017", name: "新化區", code: "233"},{cityCode: "0017", name: "左鎮區", code: "234"},
        {cityCode: "0017", name: "南化區", code: "237"},{cityCode: "0017", name: "後壁區", code: "250"},
        {cityCode: "0017", name: "白河區", code: "251"},{cityCode: "0017", name: "北門區", code: "248"},
        {cityCode: "0017", name: "學甲區", code: "247"},{cityCode: "0017", name: "鹽水區", code: "256"},
        {cityCode: "0017", name: "新營區", code: "249"},{cityCode: "0017", name: "柳營區", code: "255"},
        {cityCode: "0017", name: "東山區", code: "252"},{cityCode: "0017", name: "將軍區", code: "246"},
        {cityCode: "0017", name: "下營區", code: "254"},{cityCode: "0017", name: "六甲區", code: "253"},
        {cityCode: "0017", name: "官田區", code: "241"}
      ]},
      {name: "高雄市", code: "0019", districts: [ 
        {cityCode: "0019", name: "那瑪夏區", code: "299"},{cityCode: "0019", name: "楠梓區", code: "270"},
        {cityCode: "0019", name: "左營區", code: "272"},{cityCode: "0019", name: "鼓山區", code: "266"},
        {cityCode: "0019", name: "鹽埕區", code: "265"},{cityCode: "0019", name: "旗津區", code: "267"},
        {cityCode: "0019", name: "三民區", code: "269"},{cityCode: "0019", name: "前金區", code: "263"},
        {cityCode: "0019", name: "新興區", code: "262"},{cityCode: "0019", name: "苓雅區", code: "264"},
        {cityCode: "0019", name: "前鎮區", code: "268"},{cityCode: "0019", name: "小港區", code: "271"},
        {cityCode: "0019", name: "鳳山區", code: "287"},{cityCode: "0019", name: "仁武區", code: "275"},
        {cityCode: "0019", name: "鳥松區", code: "290"},{cityCode: "0019", name: "大寮區", code: "288"},
        {cityCode: "0019", name: "林園區", code: "289"},{cityCode: "0019", name: "茄萣區", code: "301"},
        {cityCode: "0019", name: "湖內區", code: "286"},{cityCode: "0019", name: "路竹區", code: "278"},
        {cityCode: "0019", name: "永安區", code: "285"},{cityCode: "0019", name: "岡山區", code: "277"},
        {cityCode: "0019", name: "彌陀區", code: "284"},{cityCode: "0019", name: "梓官區", code: "283"},
        {cityCode: "0019", name: "橋頭區", code: "282"},{cityCode: "0019", name: "桃源區", code: "298"},
        {cityCode: "0019", name: "甲仙區", code: "297"},{cityCode: "0019", name: "內門區", code: "295"},
        {cityCode: "0019", name: "杉林區", code: "296"},{cityCode: "0019", name: "六龜區", code: "294"},
        {cityCode: "0019", name: "阿蓮區", code: "279"},{cityCode: "0019", name: "田寮區", code: "280"},
        {cityCode: "0019", name: "旗山區", code: "292"},{cityCode: "0019", name: "美濃區", code: "293"},
        {cityCode: "0019", name: "茂林區", code: "300"},{cityCode: "0019", name: "燕巢區", code: "281"},
        {cityCode: "0019", name: "大社區", code: "276"},{cityCode: "0019", name: "大樹區", code: "291"}
      ]},
      {name: "澎湖縣", code: "0022", districts: [
        {cityCode: "0022", name: "馬公市", code: "302"},{cityCode: "0022", name: "湖西鄉", code: "307"},
        {cityCode: "0022", name: "西嶼鄉", code: "303"},{cityCode: "0022", name: "白沙鄉", code: "306"},
        {cityCode: "0022", name: "望安鄉", code: "304"},{cityCode: "0022", name: "七美鄉", code: "305"}
      ]},
      {name: "金門縣", code: "0023", districts: [
        {cityCode: "0023", name: "金城鎮", code: "311"},{cityCode: "0023", name: "金沙鎮", code: "308"},
        {cityCode: "0023", name: "金湖鎮", code: "309"},{cityCode: "0023", name: "金寧鄉", code: "310"},
        {cityCode: "0023", name: "烈嶼鄉", code: "312"},{cityCode: "0023", name: "烏坵鄉", code: "313"}
      ]},
      {name: "屏東縣", code: "0024", districts: [
        {cityCode: "0024", name: "屏東市", code: "314"},{cityCode: "0024", name: "潮州鎮", code: "327"},
        {cityCode: "0024", name: "東港鎮", code: "335"},{cityCode: "0024", name: "恆春鎮", code: "345"},
        {cityCode: "0024", name: "枋寮鄉", code: "339"},{cityCode: "0024", name: "內埔鄉", code: "325"},
        {cityCode: "0024", name: "長治鄉", code: "322"},{cityCode: "0024", name: "萬丹鄉", code: "326"},
        {cityCode: "0024", name: "九如鄉", code: "318"},{cityCode: "0024", name: "高樹鄉", code: "320"},
        {cityCode: "0024", name: "佳冬鄉", code: "337"},{cityCode: "0024", name: "竹田鄉", code: "324"},
        {cityCode: "0024", name: "新園鄉", code: "338"},{cityCode: "0024", name: "麟洛鄉", code: "323"},
        {cityCode: "0024", name: "里港鄉", code: "319"},{cityCode: "0024", name: "鹽埔鄉", code: "321"},
        {cityCode: "0024", name: "萬巒鄉", code: "330"},{cityCode: "0024", name: "新埤鄉", code: "332"},
        {cityCode: "0024", name: "南州鄉", code: "333"},{cityCode: "0024", name: "林邊鄉", code: "334"},
        {cityCode: "0024", name: "崁頂鄉", code: "331"},{cityCode: "0024", name: "滿州鄉", code: "346"},
        {cityCode: "0024", name: "枋山鄉", code: "340"},{cityCode: "0024", name: "車城鄉", code: "343"},
        {cityCode: "0024", name: "三地門", code: "315"},{cityCode: "0024", name: "牡丹鄉", code: "344"},
        {cityCode: "0024", name: "瑪家鄉", code: "317"},{cityCode: "0024", name: "琉球鄉", code: "336"},
        {cityCode: "0024", name: "獅子鄉", code: "342"},{cityCode: "0024", name: "春日鄉", code: "341"},
        {cityCode: "0024", name: "霧台鄉", code: "316"},{cityCode: "0024", name: "泰武鄉", code: "328"},
        {cityCode: "0024", name: "來義鄉", code: "329"}
      ]},
      {name: "台東縣", code: "0025", districts: [
        {cityCode: "0025", name: "台東市", code: "347"},{cityCode: "0025", name: "成功鎮", code: "357"},
        {cityCode: "0025", name: "關山鎮", code: "353"},{cityCode: "0025", name: "卑南鄉", code: "351"},
        {cityCode: "0025", name: "東河鄉", code: "356"},{cityCode: "0025", name: "鹿野鄉", code: "352"},
        {cityCode: "0025", name: "長濱鄉", code: "358"},{cityCode: "0025", name: "太麻里鄉", code: "359"},
        {cityCode: "0025", name: "池上鄉", code: "355"},{cityCode: "0025", name: "綠島鄉", code: "348"},
        {cityCode: "0025", name: "延平鄉", code: "350"},{cityCode: "0025", name: "大武鄉", code: "361"},
        {cityCode: "0025", name: "蘭嶼鄉", code: "349"},{cityCode: "0025", name: "海端鄉", code: "354"},
        {cityCode: "0025", name: "金峰鄉", code: "360"},{cityCode: "0025", name: "達仁鄉", code: "362"}
      ]},
      {name: "花蓮縣", code: "0026", districts: [
        {cityCode: "0026", name: "花蓮市", code: "363"},{cityCode: "0026", name: "鳳林鎮", code: "368"},
        {cityCode: "0026", name: "玉里鎮", code: "373"},{cityCode: "0026", name: "吉安鄉", code: "366"},
        {cityCode: "0026", name: "新城鄉", code: "364"},{cityCode: "0026", name: "壽豐鄉", code: "367"},
        {cityCode: "0026", name: "光復鄉", code: "369"},{cityCode: "0026", name: "秀林鄉", code: "365"},
        {cityCode: "0026", name: "瑞穗鄉", code: "371"},{cityCode: "0026", name: "富里鄉", code: "375"},
        {cityCode: "0026", name: "萬榮鄉", code: "372"},{cityCode: "0026", name: "豐濱鄉", code: "370"},
        {cityCode: "0026", name: "卓溪鄉", code: "374"}
      ]},
      {name: "連江縣", code: "0003", districts: [
        {cityCode: "0003", name: "南竿鄉", code: "49"},{cityCode: "0003", name: "北竿鄉", code: "50"},
        {cityCode: "0003", name: "莒光鄉", code: "51"},{cityCode: "0003", name: "東引鄉", code: "52"}
      ]}
    ]

  def self.get_city_name_by_code(code)
    return TwCountyInfo::INFO_HASH.find{|city| city[:code] == code}[:name] rescue ""
  end

  def self.get_district_name_by_code(code)
    return TwCountyInfo::INFO_HASH.each{|city| city[:districts].each{|d| return d[:name] if d[:code]== code}} rescue ""
  end
end