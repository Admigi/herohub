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

User.destroy_all
User.create(username: "toto", email: "totoduguetto@toto.com", password: "password")
User.create(username: "tata", email: "tataduguetto@toto.com", password: "password")

Hero.destroy_all

10.times do

  Hero.create(
    name: Faker::Superhero.name,
    description: Faker::Superhero.descriptor,
    powers: Faker::Superhero.power
  )

end
