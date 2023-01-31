# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
puts "Destroying all Users..."
House.destroy_all
puts "Destroying all Houses.."
Booking.destroy_all
puts "Destroying all Bookings..."
Notification.destroy_all
puts "Destroying all Notifications..."

puts "Creating user Martim.."
martim = User.new(firstName: "Martim", lastName: "Correia", email: "martim@mail.com", password: "123123")
martim.save
puts "Created."

puts "Creating user Francisco..."
francisco = User.new(firstName: "francisco", lastName: "Correia", email: "franc@mail.com", password: "123123")
francisco.save
puts "Created."

puts "Creating Martim's houses.."

houses = ["Draynor Manor", "Lumbridge Castle", "Hollow Bastion", "Disney Castle", "House of Pain", "Little House", "Dracula Castle", "Frozen's Castle", "Jack's House", "Falador Castle", "Bob's House", "Tea House"]

houses.each do |house|
  puts "Creating an House...."
    House.create(name: house,
              description: "This is the house's description, soon will be filled and meaningful words.",
              price_per_night: 10,
              rules: "Rule number 1,Rule number 2, Rule number 3,Rule number 4",
              booked: false,
              user_id: martim.id
             )
  puts "Created"
  end
