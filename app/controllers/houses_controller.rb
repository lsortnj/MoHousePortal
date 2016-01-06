#encoding: utf-8
class HousesController < ApplicationController
  
  def index
    @city     = params[:city]     ||= "新北市"
    @district = params[:district] ||= "林口區"
    @county_info = TwCountyInfo::INFO_HASH
    @houses = (
      Housefun.get_housefun_data(@city, @district) + 
      YungChing.get_yung_ching_data(@city, @district)
    ).flatten

    @houses = @houses.sort do |x, y|
      Monetize.parse(x.price).amount.to_i <=>
      Monetize.parse(y.price).amount.to_i
    end
  end
end
