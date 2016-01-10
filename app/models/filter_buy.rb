#encoding: utf-8
class FilterBuy
  def initialize(city, district, price_from, price_to, age_from, age_to)
    @info_attr = {}
    self.city       = city
    self.district   = district
    self.price_from = price_from
    self.price_to   = price_to
    self.age_from   = age_from
    self.age_to     = age_to
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

  add_accessor :city        , :default=>"0001"
  add_accessor :district    , :default=>"35"
  add_accessor :price_from  , :default=>100
  add_accessor :price_to    , :default=>1000
  add_accessor :age_from    , :default=>0
  add_accessor :age_to      , :default=>15
end