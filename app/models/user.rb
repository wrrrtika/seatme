class User < ActiveRecord::Base
	belongs_to :role 
	has_one :restaurant
	has_many :reservations
	has_secure_password
end