class RestaurantsController < ApplicationController

  # Shows the list of all restaurants

  def index
    @restaurants = Restaurant.all
  end

  # Shows one restaurant

  def show

  end

end
