# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require 'open-uri'

User.destroy_all
puts "Destroying all Users..."
House.destroy_all
puts "Destroying all Houses.."
Booking.destroy_all
puts "Destroying all Bookings..."
Notification.destroy_all
puts "Destroying all Notifications..."

puts "Creating user Martim.."
p1 = URI.open("https://res.cloudinary.com/diptdeclw/image/upload/v1675680165/production/q4c2smtpkxqfd4o1e8x1a9bo2olp.jpg")
martim = User.new(firstName: "Martim", lastName: "Correia", email: "martim@mail.com", password: "123123")
martim.picture.attach(io: p1, filename: "userPicture1", content_type: "image/jpg")
martim.save
puts "Created."

puts "Creating user Francisco..."
p2 = URI.open("https://res.cloudinary.com/diptdeclw/image/upload/v1675677583/production/q2xlp1dqvqfv2ofuoeuomjvom1yz.jpg")
francisco = User.new(firstName: "francisco", lastName: "Correia", email: "franc@mail.com", password: "123123")
francisco.picture.attach(io: p2, filename: "userPicture2", content_type: "image/jpg")
francisco.save
puts "Created."

puts "Creating Martim's houses.."




  puts "Creating House 1...."
    f1 = URI.open("https://res.cloudinary.com/diptdeclw/image/upload/v1675684558/production/mathias-konrath-Y7BG6yO9Q9o-unsplash_lbcjfn.jpg")
    h1 = House.new(name: "Mountain Castle",
              description: "Amazing castle on top of the mountain",
              price_per_night: 10,
              country: Faker::Address.country,
              city: Faker::Address.city,
              rules: "Do not feed the eagles,Highest tower is closed for the moment,Pictures without flash only",
              booked: false,
              user_id: francisco.id
             )
    h1.photos.attach(io: f1, filename: "Mountain Castle", content_type: "image/jpg")
    h1.save
    puts "Created"

    puts "Creating House 2...."
    f2 = URI.open("https://res.cloudinary.com/diptdeclw/image/upload/v1675684558/production/nick-night-MKo2y5mglEg-unsplash_pubfk4.jpg")
    h2 = House.new(name: "Big Mansion",
              description: "An old Mansion from the 18th century",
              price_per_night: 10,
              country: Faker::Address.country,
              city: Faker::Address.city,
              rules: "Mansion is old so just take good care of it,Allways let me know if anything was broken",
              booked: false,
              user_id: martim.id
             )
    h2.photos.attach(io: f2, filename: "Big Mansion", content_type: "image/jpg")
    h2.save
    puts "Created"

    puts "Creating House 3...."
    f3 = URI.open("https://res.cloudinary.com/diptdeclw/image/upload/v1675684556/production/dorian-mongel-Yui3DZiX7yM-unsplash_yk9x5v.jpg")
    h3 = House.new(name: "Lake Mansion",
              description: "A big Mansion with the most beautiful lake sighting",
              price_per_night: 10,
              country: Faker::Address.country,
              city: Faker::Address.city,
              rules: "Do not bath in the lake",
              booked: false,
              user_id: francisco.id
             )
    h3.photos.attach(io: f3, filename: "Lake Mansion", content_type: "image/jpg")
    h3.save
    puts "Created"

    puts "Creating House 4...."
    f4 = URI.open("https://res.cloudinary.com/diptdeclw/image/upload/v1675684553/production/cederic-vandenberghe-21DP3hytVHw-unsplash_aj5miw.jpg")
    h4 = House.new(name: "Spooky Castle",
              description: "Beautiful work of art inspired in the Nightmare Before Christmas movie",
              price_per_night: 10,
              country: Faker::Address.country,
              city: Faker::Address.city,
              rules: "Do not go out after 12pm,Allways lock your bedroom doors",
              booked: false,
              user_id: francisco.id
             )
    h4.photos.attach(io: f4, filename: "Spooky Castle", content_type: "image/jpg")
    h4.save
    puts "Created"

    puts "Creating House 5...."
    f5 = URI.open("https://res.cloudinary.com/diptdeclw/image/upload/v1675684543/production/rachel-davis-tn2rBnvIl9I-unsplash_q3k9l6.jpg")
    h5 = House.new(name: "Forest Castle",
              description: "A Magical Castle located inside a beautiful forest",
              price_per_night: 10,
              country: Faker::Address.country,
              city: Faker::Address.city,
              rules: "Do not feed the wild life",
              booked: false,
              user_id: martim.id
             )
    h5.photos.attach(io: f5, filename: "Forest Castle", content_type: "image/jpg")
    h5.save
    puts "Created"

    puts "Creating House 6...."
    f6 = URI.open("https://res.cloudinary.com/diptdeclw/image/upload/v1675684525/production/joshua-harris-9yoPEVoSTcA-unsplash_ijemkc.jpg")
    h6 = House.new(name: "Hobbit's House",
              description: "An house inspired in the LOTR Hobbit's habitations.",
              price_per_night: 10,
              country: Faker::Address.country,
              city: Faker::Address.city,
              rules: "Just enjoy and take care of the house",
              booked: false,
              user_id: martim.id
             )
    h6.photos.attach(io: f6, filename: "Hobbit's House", content_type: "image/jpg")
    h6.save
    puts "Created"

    puts "Creating House 7...."
    f7 = URI.open("https://res.cloudinary.com/diptdeclw/image/upload/v1675684509/production/jeet-dhanoa-sZe1nK7dvi8-unsplash_u8nnuv.jpg")
    h7 = House.new(name: "Hidden Castle",
              description: "A Beautiful place far away from civilization where you can enjoy the nature like you never did before",
              price_per_night: 10,
              country: Faker::Address.country,
              city: Faker::Address.city,
              rules: "No rules",
              booked: false,
              user_id: martim.id
             )
    h7.photos.attach(io: f7, filename: "Hidden Castle", content_type: "image/jpg")
    h7.save
    puts "Created"
