class User < ActiveRecord::Base
	has_one :restaurant
	has_many :reservations
end