class Reservation < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	validate :check_against_capacity

	private
	def check_against_capacity
		unless restaurant.seats_available?(party_size, res_time)
			errors.add(:base, "You've breached our capacity, please try again with a smaller party size!")
		end
	end
end