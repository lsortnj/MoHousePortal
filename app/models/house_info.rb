class HouseInfo

  def initialize
    @info_attr = {}
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
  add_accessor :price       , :default=>""
  add_accessor :range_area  , :default=>""
  add_accessor :rooms_info  , :default=>""
  add_accessor :park_info   , :default=>""
  add_accessor :info        , :default=>""
  add_accessor :link        , :default=>""
  add_accessor :cover       , :default=>""

  def self.sort_by_price(house_infos)
    return house_infos if !house_infos.is_a? Array
    return house_infos.sort do |x, y|
            Monetize.parse(x.price).amount.to_i <=>
            Monetize.parse(y.price).amount.to_i
          end
  end
end