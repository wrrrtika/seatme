# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Reservation.destroy_all
Restaurant.destroy_all


User.create!([{

	first_name: 'Billy',
	last_name:  'Billyson',
	email: 'bill@billy.com',
	phone: '555-555-555',
	password_digest: 'password'
	
	}])

Restaurant.create!([{

	name: 'Macdonalds',
	address: 'everywhere',
	description: 'something like food...sort of.'
	}])

Reservation.create! ([{

	party_size: "100",
	note: "I'm severely obese and shouldn't be eating here, but oh well"
	}])


p "Created one user, one restaurant, and one reservation!"