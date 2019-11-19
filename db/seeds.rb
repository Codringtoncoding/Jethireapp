# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plane.destroy_all

Plane.create!(name: "Bombardier Global Express", user: User.first, price: 100000, capacity: 8)
Plane.create!(name: "Embraer Phenom 100", user: User.first, price: 50000, capacity: 6)
Plane.create!(name: "Gulfstream G550", user: User.first, price: 1000000, capacity: 30)

