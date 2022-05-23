Reservation.destroy_all
Hive.destroy_all
User.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
corentin = User.create!(first_name: "Carissa", last_name: "Proctor", email: "corentin@test.com", password: "password")
shiyun = User.create!(first_name: "Kaleigh", last_name: "Mcgrath", email: "shiyun@test.com", password: "password")
val = User.create!(first_name: "Ralph", last_name: "Duke", email: "valentin@test.com", password: "password")
aurore = User.create!(first_name: "Ishaan", last_name: "Wiggins", email: "aurore@test.com", password: "password")

hive_shiyun_1 = Hive.create!(queen: shiyun, name: "ruche blue", description: "une belle ruche située dans les arbres", address: "Rennes", price_per_day: 3)
hive_shiyun_2 = Hive.create!(queen: shiyun, name: "ruche red", description: "une grande ruche située dans la montagen", address: "Nantes", price_per_day: 6)
hive_aurore_1 = Hive.create!(queen: aurore, name: "ruche yellow", description: "une unique ruche située dans le bureau", address: "Paris", price_per_day: 9)
hive_aurore_2 = Hive.create!(queen: aurore, name: "ruche green", description: "une original ruche située au bord de l'eau", address: "Perpignan", price_per_day: 10)

Reservation.create!(user: corentin, hive: hive_shiyun_1, total_price: 9, start_date: Date.today, end_date: Date.today + 3.days)
Reservation.create!(user: val, hive: hive_shiyun_2, total_price: 36, start_date: Date.today, end_date: Date.today + 6.days)
Reservation.create!(user: corentin, hive: hive_aurore_1, total_price: 81, start_date: Date.today, end_date: Date.today + 9.days)
Reservation.create!(user: corentin, hive: hive_aurore_2, total_price: 120, start_date: Date.today, end_date: Date.today + 12.days)
