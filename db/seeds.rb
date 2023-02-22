# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'destroying all restutants'
Restaurant.destroy_all
puts 'All restaurants destroyed'

5.times do
  category = %w[chinese italian japanese french belgian].sample
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.full_address, category: category, phone_number: Faker::PhoneNumber.phone_number)
  restaurant.save
  puts "Created #{restaurant.name}"
end

puts "created #{Restaurant.count}"
