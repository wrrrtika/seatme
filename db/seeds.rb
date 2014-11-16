# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.destroy_all
# Reservation.destroy_all
# Restaurant.destroy_all


User.create!([{

	first_name: 'Billy',
	last_name:  'Billyson',
	email: 'demo1@demo.com',
	user_role: 'Restaurant Owner',
	phone: '555-555-555',
	password_digest: '$2a$10$ZFida4nIGNn3EajIHlqyZ.MqiNOs5urYRcja8xMO97blujnP/CCou'
}])

User.create!([{

	first_name: 'John',
	last_name:  'Doe',
	email: 'demo2@demo.com',
	phone: '555-555-555',
	user_role: 'Administrator',
	password_digest: '$2a$10$ZFida4nIGNn3EajIHlqyZ.MqiNOs5urYRcja8xMO97blujnP/CCou'
}])

User.create!([{

	first_name: 'Kilgore',
	last_name:  'Trout',
	email: 'demo3@demo.com',
	user_role: 'Customer',
	phone: '555-555-555',
	password_digest: '$2a$10$ZFida4nIGNn3EajIHlqyZ.MqiNOs5urYRcja8xMO97blujnP/CCou'
}])

Restaurant.create!([{

	name: 'Billy\'s Pies',
	address: 'everywhere',
	description: 'something like food...sort of.',
	capacity: 10,
	user_id: 1
}])

Restaurant.create!([{

	name: 'John\'s Pizza',
	address: 'everywhere',
	description: 'something like food...sort of.',
	capacity: 10,
	user_id: 2
}])

Reservation.create! ([{
	party_size: "1",
	note: "I'm severely obese and shouldn't be eating here, but oh well",
	res_time: "2014-11-14 22:00:00",
	restaurant_id: 1,
	user_id: 1
}])

Reservation.create! ([{
	party_size: "2",
	note: "Food!!!",
	res_time: "2014-11-14 22:00:00",
	restaurant_id: 1,
	user_id: 2
}])

Reservation.create! ([{
	party_size: "3",
	note: "I need meat",
	res_time: "2014-11-14 22:00:00",
	restaurant_id: 2,
	user_id: 1
}])

Reservation.create! ([{
	party_size: "1",
	note: "Allergic to water",
	res_time: "2014-11-14 22:00:00",
	restaurant_id: 2,
	user_id: 2
}])

Role.create!([{
	user_type: 'Administrator'
}])
Role.create!([{
	user_type: 'Restaurant Owner'
}])
Role.create!([{
	user_type: 'Customer'
}])


p "Created demo users (demo1@demo.com, demo2@demo.com) with password 'demo'. 1 restaurant created for each user. John's Pizza is currently at capacity @10pm, while Billy's Pies is at 3/10. Each user has made a reservation at each restaurant."