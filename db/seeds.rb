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

user1 = User.create!(email:'owner1@gmail.com', password:'123456789', ssn:Faker::IdNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: true, country:'Ecuador', city: 'Guayaquil', address:'victor emilio estrada', birth_date: Date.new, gender: "male",longitude:Faker::Address.longitude, latitude: Faker::Address.latitude)
user1_avatar = URI.open("https://randomuser.me/api/portraits/men/61.jpg")
user1.avatar.attach({io:user1_avatar, filename:'avatar1', content_type:'image/png'})

user2 = User.create!(email:'user1@gmail.com', password:'123456789', ssn:Faker::IdNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'miraflores', birth_date: Date.new, gender: "male")
user2_avatar = URI.open("https://randomuser.me/api/portraits/men/60.jpg")
user2.avatar.attach({io:user2_avatar, filename:'avatar2', content_type:'image/png'})

user3 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IdNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'barranco', birth_date: Date.new, gender: "male")
user3_avatar = URI.open("https://randomuser.me/api/portraits/men/62.jpg")
user3.avatar.attach({io:user3_avatar, filename:'avatar3', content_type:'image/png'})

user4 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IdNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'Jesus maria', birth_date: Date.new, gender: "female")
user4_avatar = URI.open("https://randomuser.me/api/portraits/women/61.jpg")
user4.avatar.attach({io:user4_avatar, filename:'avatar4', content_type:'image/png'})

user5 = User.create!(email:Faker::Internet.email, password:'123456789', ssn:Faker::IdNumber.valid, first_name:Faker::Name.first_name , last_name: Faker::Name.last_name  , phone_number:'0997079516', owner: false, country:'Peru', city: 'Lima', address:'chorrillos', birth_date: Date.new, gender: "female")
user5_avatar = URI.open("https://randomuser.me/api/portraits/women/60.jpg")

user5.avatar.attach({io:user5_avatar, filename:'avatar5', content_type:'image/png'})



ship1 = Ship.create!(user: user1, max_people: 10, price: 850, ship_type: 'party', name: "la vaquita", description:"lindo velero para pasar buen fin de semana", longitude:Faker::Address.longitude, latitude: Faker::Address.latitude)

ship1.images.attach({
    io:URI.open("https://images.boatsgroup.com/resize/1/93/8/2015-leopard-48-sail-9539308-20240907113528753-1_XLARGE.jpg?w=1028&h=685&t=1725734558000&exact&format=webp"),
    filename:'ship_pic',
    content_type:'image/png'
  },
  {
    io:URI.open("https://images.boatsgroup.com/resize/1/93/8/2015-leopard-48-sail-9539308-20240907113422945-1_XLARGE.jpg?w=1028&h=685&t=1725734741000&exact&format=webp"),
    filename:'ship_pic2',
    content_type:'image/png'
  },
  {
    io:URI.open("https://images.boatsgroup.com/resize/1/93/8/2015-leopard-48-sail-9539308-20240907112635993-1_XLARGE.jpg?w=1028&h=685&t=1725734740000&exact&format=webp"),
    filename:'ship_pic3',
    content_type:'image/png'
  },
  {
    io:URI.open("https://images.boatsgroup.com/resize/1/93/8/2015-leopard-48-sail-9539308-20240907113531782-1_XLARGE.jpg?w=1028&h=685&t=1725734558000&exact&format=webp"),
    filename:'ship_pic4',
    content_type:'image/png'
  })
sleep(5)


ship2 = Ship.create!(user: user1, max_people: 8, price: 650, ship_type: 'party', name: "marsopa", description:"lindo velero para pasar buen fin de semana", longitude:Faker::Address.longitude, latitude: Faker::Address.latitude )
ship2.images.attach({
    io:URI.open("https://images.boatsgroup.com/resize/1/91/71/9289171_20240306133309383_1_XLARGE.jpg?w=1028&h=685&t=1709760805000&exact&format=webp"),
    filename:'ship_pic',
    content_type:'image/png'
  },
  {
    io:URI.open("https://images.boatsgroup.com/resize/1/91/71/9289171_20240306133150293_1_XLARGE.jpg?w=1028&h=685&t=1709760711000&exact&format=webp"),
    filename:'ship_pic2',
    content_type:'image/png'
  },
  {
    io:URI.open("https://images.boatsgroup.com/resize/1/91/71/9289171_20240306133202399_1_XLARGE.jpg?w=1028&h=685&t=1709760723000&exact&format=webp"),
    filename:'ship_pic3',
    content_type:'image/png'
  },
  {
    io:URI.open("https://images.boatsgroup.com/resize/1/91/71/9289171_20240306133205374_1_XLARGE.jpg?w=1028&h=685&t=1709760726000&exact&format=webp"),
    filename:'ship_pic4',
    content_type:'image/png'
  })
sleep(5)

ship3 = Ship.create!(user: user1, max_people: 6, price: 450, ship_type: 'party', name: "la pinta", description:"lindo velero para pasar buen fin de semana", longitude:Faker::Address.longitude, latitude: Faker::Address.latitude )
ship3.images.attach({
    io:URI.open("https://hanseyachts.hr/images/ownership/yacht-images/hanse-588/hanse-588-1.jpg"),
    filename:'ship_pic',
    content_type:'image/png'
  },
  {
    io:URI.open("https://hanseyachts.hr/images/ownership/yacht-images/hanse-588/hanse-588-4.jpg"),
    filename:'ship_pic2',
    content_type:'image/png'
  },
  {
    io:URI.open("https://hanseyachts.hr/images/ownership/yacht-images/hanse-588/hanse-588-3.jpg"),
    filename:'ship_pic3',
    content_type:'image/png'
  },
  {
    io:URI.open("https://hanseyachts.hr/images/ownership/yacht-images/hanse-588/hanse-588-5.jpg"),
    filename:'ship_pic4',
    content_type:'image/png'
  })
sleep(5)

ship4 = Ship.create!(user: user1, max_people: 20, price: 1500, ship_type: 'party', name: "la nina", description:"lindo velero para pasar buen fin de semana", longitude:Faker::Address.longitude, latitude: Faker::Address.latitude )
ship4.images.attach({
    io:URI.open("https://images.boatsgroup.com/resize/1/6/99/8030699_20210913094727456_1_XLARGE.jpg?w=1028&h=685&t=1642374257000&format=webp"),
    filename:'ship_pic',
    content_type:'image/png'
  },
  {
    io:URI.open("https://images.boatsgroup.com/resize/1/47/33/8184733_20220115201943933_1_XLARGE.jpg?w=1028&h=685&t=1642374258000&format=webp"),
    filename:'ship_pic2',
    content_type:'image/png'
  },
  {
    io:URI.open("https://images.boatsgroup.com/resize/1/47/33/8184733_20220115201928979_1_XLARGE.jpg?w=1028&h=685&t=1668564173000&format=webp"),
    filename:'ship_pic3',
    content_type:'image/png'
  },
  {
    io:URI.open("https://images.boatsgroup.com/resize/1/6/99/8030699_20210913095243095_1_XLARGE.jpg?w=1028&h=685&t=1668564173000&format=webp"),
    filename:'ship_pic4',
    content_type:'image/png'
  })
sleep(5)

Reservation.new(user: user2, ship: ship1, price: 2500, negotiation_status: "reply", reservation_start: Time.new.next_day(1), reservation_end: Time.new, people_in_reservation: 10)
puts "all done!"
