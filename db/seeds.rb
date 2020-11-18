# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Initializing seed...'

10.times do
  Flat.create!(
    name: Faker::Movies::StarWars.wookiee_sentence ,
    address: Faker::Movies::StarWars.planet,
    description: Faker::Movies::StarWars.quote ,
    price_per_night: Random.new.rand(1000),
    number_of_guests: Random.new.rand(12)
)
end

puts '============ Seeded ! ============'
