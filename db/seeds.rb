# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding database..."

User.create(email: "admin@huone.com", password: "secret")

Hotel.create(name: "Keekoo", address: "Esplanade Charles de Gaulle, Bordeaux")
Hotel.create(name: "Papa Shelter", address: "Cours du Chapeau Rouge, Bordeaux")
Hotel.create(name: "Hotel Gerent", address: "Place de la Comédie, Bordeaux")
Hotel.create(name: "Foology", address: "Cours de la Marne, Bordeaux")
Hotel.create(name: "Anti Hotel", address: "Quai des Chartrons, Bordeaux")

Room.create(hotel_id: 1, capacity: 1, price_per_night: 40).photo = "room1.jpg"
Room.create(hotel_id: 2, capacity: 1, price_per_night: 60).photo = "room2.jpg"
Room.create(hotel_id: 3, capacity: 2, price_per_night: 80).photo = "room3.jpg"
Room.create(hotel_id: 4, capacity: 4, price_per_night: 150).photo = "room4.jpg"
Room.create(hotel_id: 5, capacity: 2, price_per_night: 90).photo = "room5.jpg"
