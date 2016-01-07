#encoding: utf-8
class HousesController < ApplicationController
  
  def index
    @city     = params[:city]     ||= "新北市"
    @district = params[:district] ||= "林口區"
    @city     = TwCountyInfo.get_city_name_by_code(params[:city]) if params[:city][0,1] == "0"
    @district = TwCountyInfo.get_district_name_by_code(params[:district]) if params[:district].to_i > 0
    
    @price_from = params[:price_from]  ||= 100
    @price_to   = params[:price_to]    ||= 1000
    @price_to   = @price_from.to_i+100 if @price_to.to_i < @price_from.to_i
    @county_info = TwCountyInfo::INFO_HASH
    @houses = (
      Housefun.get_housefun_data(@city, @district, @price_from, @price_to) + 
      YungChing.get_yung_ching_data(@city, @district, @price_from, @price_to)
    ).flatten

    #Sort By price
    @houses = HouseInfo.sort_by_price(@houses)
  end
end
