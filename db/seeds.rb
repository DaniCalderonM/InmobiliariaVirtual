# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Characteristic.create(name: "Piscina")
Characteristic.create(name: "Estacionamiento")
Characteristic.create(name: "Juegos infantiles")
Characteristic.create(name: "Quincho")
Characteristic.create(name: "Áreas verdes")
Characteristic.create(name: "Gimnasio")
User.create(email: "admin@gmail.com", password: "123456", password_confirmation: "123456", role: 2)
User.create(email: "conserje@gmail.com", password: "123456", password_confirmation: "123456", role: 1)
User.create(email: "user@gmail.com", password: "123456", password_confirmation: "123456")

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'ciudades.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
    City.create(
        name: row['name']
    )

end