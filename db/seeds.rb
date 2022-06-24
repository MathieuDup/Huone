# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding database..."

User.destroy_all
Hotel.destroy_all
Room.destroy_all

User.create(email: "admin@huone.com", password: "secret")

Hotel.create(name: "Keekoo", address: "12 Esplanade Charles de Gaulle, Bordeaux")
Hotel.create(name: "Papa Shelter", address: "5 Cours du Chapeau Rouge, Bordeaux")
Hotel.create(name: "Foology", address: "125 Cours de la Marne, Bordeaux")
Hotel.create(name: "Hotel Gerent", address: "8 Place de la Comédie, Bordeaux")
Hotel.create(name: "Anti Hotel", address: "67 Quai des Chartrons, Bordeaux")
Hotel.create(name: "Les Trois Balais", address: "3 Grand-rue, Pré-au-lard")
Hotel.create(name: "Hotel Dorado", address: "1 Place de la Ville, Bordeaux")
Hotel.create(name: "Hotel Hicoptère", address: "56 rue Buhan, Bordeaux")
Hotel.create(name: "Consuela Bananahammock", address: "100 quai de Paludate, Bordeaux")
Hotel.create(name: "Supercalifragilistic", address: "3 rue du Ha, Bordeaux")
Hotel.create(name: "Hotel fest", address: "1 rue du festival, Clisson")
Hotel.create(name: "Placard sous l'escalier", address: "4, Privet Drive, Londres")


Room.create(hotel_id: 1, capacity: 2, price_per_night: 40).photo.attach(io: File.open('app/assets/images/rooms/room1.jpg'), filename: 'room1.jpg')
Room.create(hotel_id: 2, capacity: 1, price_per_night: 60).photo.attach(io: File.open('app/assets/images/rooms/room2.jpg'), filename: 'room2.jpg')
Room.create(hotel_id: 3, capacity: 2, price_per_night: 80).photo.attach(io: File.open('app/assets/images/rooms/room3.jpg'), filename: 'room3.jpg')
Room.create(hotel_id: 4, capacity: 4, price_per_night: 150).photo.attach(io: File.open('app/assets/images/rooms/room4.jpg'), filename: 'room4.jpg')
Room.create(hotel_id: 5, capacity: 2, price_per_night: 90).photo.attach(io: File.open('app/assets/images/rooms/room5.jpg'), filename: 'room5.jpg')
Room.create(hotel_id: 6, capacity: 2, price_per_night: 100).photo.attach(io: File.open('app/assets/images/rooms/room6.jpeg'), filename: 'room6.jpeg')
Room.create(hotel_id: 7, capacity: 2, price_per_night: 80).photo.attach(io: File.open('app/assets/images/rooms/room7.jpg'), filename: 'room7.jpg')
Room.create(hotel_id: 8, capacity: 4, price_per_night: 120).photo.attach(io: File.open('app/assets/images/rooms/room8.jpg'), filename: 'room8.jpg')
Room.create(hotel_id: 9, capacity: 2, price_per_night: 50).photo.attach(io: File.open('app/assets/images/rooms/room9.jpg'), filename: 'room9.jpg')
Room.create(hotel_id: 10, capacity: 3, price_per_night: 70).photo.attach(io: File.open('app/assets/images/rooms/room10.jpg'), filename: 'room10.jpg')
Room.create(hotel_id: 11, capacity: 1000, price_per_night: 5).photo.attach(io: File.open('app/assets/images/rooms/room11.jpeg'), filename: 'room11.jpeg')
Room.create(hotel_id: 12, capacity: 1, price_per_night: 10).photo.attach(io: File.open('app/assets/images/rooms/room12.jpeg'), filename: 'room12.jpeg')

puts "Database seeded!"
