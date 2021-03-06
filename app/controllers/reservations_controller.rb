class ReservationsController < ApplicationController
	before_filter :logged_in?

	def new
		@reservation = Reservation.new
	end
	def index
		@my_reservations = current_user.reservations
		@rest_reservations = current_user.restaurant.reservations
	end
	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reservation = @restaurant.reservations.build(reservation_params)

		@reservation.user = current_user

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

end
