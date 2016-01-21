#encoding: utf-8
class HousesController < ApplicationController
  
  def index
    @county_info = TwCountyInfo::INFO_HASH

    @city     = params[:city]     ||= "新北市"
    @district = params[:district] ||= "林口區"
    @city     = TwCountyInfo.get_city_name_by_code(@city)         if @city[0,1] == "0"
    @district = TwCountyInfo.get_district_name_by_code(@district) if @district.to_i > 0
    
    @price_from = params[:price_from]  ||= 100
    @price_to   = params[:price_to]    ||= 1000
    @price_to   = @price_from.to_i+100 if @price_to.to_i < @price_from.to_i

    @age_from = params[:age_from] ||= 0
    @age_to   = params[:age_to]   ||= 15
    @age_to   = @age_from.to_i+5 if @age_to.to_i < @age_from.to_i

    filter_buy = FilterBuy.new(@city, @district, @price_from, @price_to, @age_from, @age_to)

    @houses = HouseInfo.get_from_all_source(filter_buy)

    #Sort By price
    @houses = HouseInfo.sort_by_price(@houses)
  end
end
