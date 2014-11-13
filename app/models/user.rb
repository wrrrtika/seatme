class User < ActiveRecord::Base
	has_one :restaurant
	has_many :reservations
	has_secure_password
end