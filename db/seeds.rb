# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Plane.destroy_all
User.destroy_all


humphrey = User.create(email: "humphrey@lewagon.com", password: "123456")
cyril = User.create(email: "cyril@lewagon.com", password: "123456")
brigita = User.create(email: "brigita@lewagon.com", password: "123456")
luke = User.create(email: "luke@lewagon.com", password: "123456")


Plane.create!(name: "Bombardier Global Express", user: humphrey, price: 2500, capacity: 15, photo: "")
Plane.create!(name: "Embraer Phenom 100", user: cyril, price: 2000, capacity: 12)
Plane.create!(name: "Gulfstream G550", user: brigita, price: 1700, capacity: 10)
Plane.create!(name: "LukeJet 3800 Sport Edition", user: luke, price: 1500, capacity: 8)




Review.create!(content: "test review", rating: 5, plane: Plane.all.sample)



