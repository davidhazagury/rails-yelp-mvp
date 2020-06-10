class RestaurantsController < ApplicationController

  # Shows the list of all restaurants
  def index
    @restaurants = Restaurant.all
  end

  # Shows one restaurant
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # Get the form and create an instance out of it.
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(rest_params)
    redirect_to restaurant_path(@restaurant)
  end

  private

  def rest_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
