require 'faker'
require 'open-uri'
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
user1 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IDNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: true, country:'Ecuador', city: 'gye', address:'por ahi', birth_date: Date.new, gender: "male")
user1_avatar = URI.open(Faker::Avatar.image)
user1.avatar.attach({io:user1_avatar, filename:'avatar1', content_type:'image/png'})

user2 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IDNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'por alla', birth_date: Date.new, gender: "male")
user2_avatar = URI.open(Faker::Avatar.image)
user2.avatar.attach({io:user2_avatar, filename:'avatar2', content_type:'image/png'})

user3 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IDNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'por alla', birth_date: Date.new, gender: "male")
user3_avatar = URI.open(Faker::Avatar.image)
user3.avatar.attach({io:user3_avatar, filename:'avatar3', content_type:'image/png'})

user4 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IDNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'por alla', birth_date: Date.new, gender: "female")
user4_avatar = URI.open(Faker::Avatar.image)
user4.avatar.attach({io:user4_avatar, filename:'avatar4', content_type:'image/png'})

user5 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IDNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'por alla', birth_date: Date.new, gender: "female")
user5_avatar = URI.open(Faker::Avatar.image)
user5.avatar.attach({io:user5_avatar, filename:'avatar5', content_type:'image/png'})


puts "creating ships"
Ship.create!(user: user1, max_people: 10, price: 850, ship_type: 'party', name: "la vaquita", description:"lindo velero para pasar buen fin de semana", longitude:Faker::Address.longitude, latitude: Faker::Address.latitude)

Ship.create!(user: user1, max_people: 8, price: 650, ship_type: 'party', name: "marsopa", description:"lindo velero para pasar buen fin de semana", longitude:Faker::Address.longitude, latitude: Faker::Address.latitude )

Ship.create!(user: user1, max_people: 6, price: 450, ship_type: 'party', name: "la pinta", description:"lindo velero para pasar buen fin de semana", longitude:Faker::Address.longitude, latitude: Faker::Address.latitude )

Ship.create!(user: user1, max_people: 20, price: 1500, ship_type: 'party', name: "la nina", description:"lindo velero para pasar buen fin de semana", longitude:Faker::Address.longitude, latitude: Faker::Address.latitude )

puts "all done!"

# Reservation.new(user: user2, ship: ship, price: 2500, negotiation_status: "reply", reservation_start: Time.new.next_day(1), reservation_end: Time.new, people_in_reservation: 10)
