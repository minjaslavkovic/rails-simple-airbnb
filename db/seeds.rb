# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

4.times do
  flats = Flat.create!(
    name: Faker::Movie.quote,
    address: Faker::Address.full_address,
    description: Faker::Quote.famous_last_words,
    price_per_night: rand(10..200),
    number_of_guests: rand(1..6)
  )
  puts flats
end
