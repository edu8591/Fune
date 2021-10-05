require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting previous db"
Reservation.destroy_all
Ship.destroy_all
User.destroy_all

puts "creating users"
user1 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IDNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: true, country:'Ecuador', city: 'gye', address:'por ahi', birth_date: Date.new)

user2 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IDNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'por alla', birth_date: Date.new)

user3 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IDNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'por alla', birth_date: Date.new)

user4 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IDNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'por alla', birth_date: Date.new)

user5 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IDNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'por alla', birth_date: Date.new)

puts "creating ships"
Ship.create!(user: user1, max_people: 10, min_price:500, max_price: 850, ship_type: 'party', location:'en el mar')

Ship.create!(user: user1, max_people: 8, min_price:400, max_price: 650, ship_type: 'party', location:'en el mar')

Ship.create!(user: user1, max_people: 6, min_price:250, max_price: 450, ship_type: 'party', location:'en el mar')

Ship.create!(user: user1, max_people: 20, min_price:1500, max_price: 1850, ship_type: 'party', location:'en el mar')

puts "all done!"

# Reservation.new(user: user2, ship: ship, price: 2500, negotiation_status: "reply", reservation_start: Time.new.next_day(1), reservation_end: Time.new, people_in_reservation: 10)
