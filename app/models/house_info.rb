class HouseInfo

  def initialize(source, name, price, cover, info="")
    @info_attr = {}
    self.source = source
    self.name   = name
    self.price  = price
    self.info   = info
    self.cover  = cover
  end

  def self.add_accessor(key, attr={})
    default_value = attr[:default]
    key_s = key.to_s
    define_method(key){ return (@info_attr.key?(key_s) ? @info_attr[key_s] : default_value) }
    define_method(key_s + "="){|s|
      if s == nil
        @info_attr.delete(key_s)
      else
        @info_attr[key_s] = s
      end
      return s
    }
  end

  add_accessor :source      , :default=>""
  add_accessor :name        , :default=>""
  add_accessor :price       , :default=>0
  add_accessor :range_area  , :default=>0
  add_accessor :rooms_count , :default=>0
  add_accessor :space_count , :default=>0
  add_accessor :toilet_count, :default=>0
  add_accessor :rooms_info  , :default=>""
  add_accessor :park_info   , :default=>""
  add_accessor :info        , :default=>""
  add_accessor :link        , :default=>""
  add_accessor :cover       , :default=>""
  add_accessor :floor       , :default=>""
  add_accessor :building_age, :default=>0

  def self.sort_by_price(house_infos)
    return house_infos if !house_infos.is_a? Array
    return house_infos.sort{|x, y| x.price <=> y.price}
  end
end