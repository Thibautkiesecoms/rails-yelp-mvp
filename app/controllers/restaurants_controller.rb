class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  def create
    restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurant_path(restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

end

 private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
