class ReservationsController < ApplicationController
	before_filter :load_restaurant

	def new
		@reservation = Reservation.new
	end
	def show
		@reservations = Reservation.all
	end
	def create
		@reservation = @restaurant.reservations.build(reservation_params)

		if @reservation.save
			redirect_to restaurants_path
		else
			render 'restaurants/show'
		end
	end

	private
	def reservation_params
		params.require(:reservation).permit(:party_size, :res_time, :note)
	end

	def load_restaurant
		@restaurant = Restaurant.find(params[:restaurant_id])
	end
end
