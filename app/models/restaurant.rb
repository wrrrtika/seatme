class Restaurant < ActiveRecord::Base
	belongs_to :user
	has_many :reservations

	def seats_available?(party_size, inputted_res_time)
		reserved_seats = reservations.where(res_time: inputted_res_time).sum(:party_size)
		(reserved_seats + party_size) <= capacity
	end
end
