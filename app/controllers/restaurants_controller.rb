class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
	end

	def show
		@restaurant = Restaurant.find(params[:id])
		@reservation = Reservation.new
	end

	def new
		@restaurant = Restaurant.new
	end
	
	def create
		@restaurant = Restaurant.new(restaurant_params)

		if @restaurant.save
			redirect_to restaurants_path
		else
			render :new
		end

	end

	private
	def restaurant_params
		params.require(:restaurant).permit(:name, :address, :description)
	end
end
