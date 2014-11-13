class ReservationController < ApplicationController
	def show
		@reservations = Reservation.all
	end
end
