# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
user1 = User.create!(email:'eduardoserrano8591@gmail.com', password:'123456789', ssn:'099594979', first_name:'Eduardo', last_name: 'Serrano', phone_number:'0997079516', owner: true, country:'Ecuador', city: 'gye', address:'por ahi', birth_date: Date.new)

user2 = User.create!(email:'cesarin@gmail.com', password:'123456789', ssn:'099594989', first_name:'Cesar', last_name: 'Madera', phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'por alla', birth_date: Date.new)

ship = Ship.create!(user: user1, max_people: 10, min_price:500, max_price: 850, ship_type: 'party', location:'en el mar')

Reservation.new(user: user2, ship: ship, price: 2500, negotiation_status: "reply", reservation_start: Time.new.next_day(1), reservation_end: Time.new, people_in_reservation: 10)
