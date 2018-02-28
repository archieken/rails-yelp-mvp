class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create

    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(get_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def get_params
    params.require(:review).permit(:content, :rating)
  end


end
