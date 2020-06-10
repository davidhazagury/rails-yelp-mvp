class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.create(rev_params)
  end

  private

  def rev_params
    params.require(:review).permit(:content, :rating)
  end
end
