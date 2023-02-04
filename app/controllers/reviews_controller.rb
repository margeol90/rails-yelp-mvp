class ReviewsController < ApplicationController
  before_action :set_restaurant

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(reviews_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @review.destroy
    redirect_to restaurant_path(@review.restaurant), status: :see_other
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def reviews_params
    params.require(:review).permit(:content, :rating)
  end
end
