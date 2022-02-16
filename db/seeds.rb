# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Flat.create!(
    name: Faker::GreekPhilosophers.name,
    address: Faker::Address.street_address,
    description: Faker::GreekPhilosophers.quote,
    price_per_night: (50..500).to_a.sample,
    number_of_guests: (1..6).to_a.sample
  )
end
