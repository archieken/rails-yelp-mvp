class RestaurantsController < ApplicationController

   def index
    @restaurants = Restaurant.all
   end

   def new
    @restaurant = Restaurant.new
   end

   def show
    @restaurant = Restaurant.find(params[:id])
    end

   def create

    @restaurant = Restaurant.new(get_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
   end


   private

   def get_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
   end


end
