# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all
category = %w[chinese italian japanese french belgian]

puts 'Creating restaurants...'
katyas_shack = { name: 'Katyas Shack', address: 'Teststrasse 1, 10111, Berlin', phone_number: '38475297', category: category.sample }
murilos_cakes = { name: 'Murilos Cakes', address: 'Teststrasse 2, 10111, Berlin', phone_number: '27463780', category: category.sample }
laias_ananas = { name: 'Laias Ananas', address: 'Teststrasse 3, 10111, Berlin', phone_number: '05746274', category: category.sample }
alams_breakfast = { name: 'Alams Breakfast', address: 'Teststrasse 4, 10111, Berlin', phone_number: '48362436', category: category.sample }
giulios_eggs = { name: 'Giulios Eggs', address: 'Teststrasse 5, 10111, Berlin', phone_number: '47358276', category: category.sample }

[katyas_shack, murilos_cakes, laias_ananas, alams_breakfast, giulios_eggs].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'



# require 'faker'
# puts "Cleaning Database"
# Restaurant.destroy_all

# puts "Creating Database"

# 5.times do
#    Restaurant.create(
#    name: Faker::Restaurant.name,
#    address: Faker::Address.street_address,
#    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample,
#    # rating: rand(1..5),
#    phone_number: Faker::PhoneNumber.phone_number
#  )
#end
#[8:18 PM] puts "We have our DB :white_check_mark: with #{Restaurant.count} restaurants"
