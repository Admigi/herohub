# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "faker"

Hero.destroy_all
User.destroy_all
user = User.create(username: "toto", email: "totoduguetto@toto.com", password: "password")
user2 = User.create(username: "tata", email: "tataduguetto@toto.com", password: "password")


10.times do

  Hero.create(
    name: Faker::Superhero.name,
    description: Faker::Superhero.descriptor,
    power: Faker::Superhero.power,
    city: Faker::Address.city,
    price: Faker::Number.between(from: 1, to: 100000000),
    user_id: user.id
  )

end


# Hero.create!(name: "jacky", description: "n'a pas besoin de siège", power: "a des couilles de la taille d'un pouf et peut s'asseoir dessus", city: "Nantes", price: "2500€", user_id: user.id )
