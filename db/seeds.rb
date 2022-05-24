require "open-uri"

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
corentin = User.new(first_name: "Corentin", last_name: "C", email: "corentin@test.com", password: "password")
file_corentin = File.open("db/fixtures/corentin.jpeg")
corentin.photo.attach(io: file_corentin, filename: 'corentin.jpeg', content_type: 'image/jpeg')
corentin.save!

shiyun = User.create!(first_name: "Shiyun", last_name: "S", email: "shiyun@test.com", password: "password")
file_shiyun = File.open("db/fixtures/shiyun.jpeg")
shiyun.photo.attach(io: file_shiyun, filename: 'shiyun.jpeg', content_type: 'image/jpeg')
shiyun.save!

val = User.create!(first_name: "Val", last_name: "V", email: "valentin@test.com", password: "password")
file_val = File.open("db/fixtures/val.png")
val.photo.attach(io: file_val, filename: 'val.png', content_type: 'image/png')
val.save!

aurore = User.create!(first_name: "Aurore", last_name: "A", email: "aurore@test.com", password: "password")
file_aurore = File.open("db/fixtures/aurore.jpeg")
aurore.photo.attach(io: file_aurore, filename: 'aurore.jpeg', content_type: 'image/jpeg')
aurore.save!

hive_shiyun_1 = Hive.create!(queen: shiyun, name: "ruche yellow", description: "une yellow ruche située dans l'arbre", address: "Rennes", price_per_day: 3)
file_hive_shiyun_1 = File.open("db/fixtures/yellow.jpeg")
hive_shiyun_1.photo.attach(io: file_hive_shiyun_1, filename: 'yellow.jpeg', content_type: 'image/jpeg')
hive_shiyun_1.save!

hive_shiyun_2 = Hive.create!(queen: shiyun, name: "ruche verte", description: "une verte ruche située dans la montagen", address: "Nantes", price_per_day: 6)
file_hive_shiyun_2 = File.open("db/fixtures/verte.webp")
hive_shiyun_2.photo.attach(io: file_hive_shiyun_2, filename: 'verte.webp', content_type: 'image/webp')
hive_shiyun_2.save!

hive_aurore_1 = Hive.create!(queen: aurore, name: "ruche rouge", description: "une rouge ruche située dans le bureau", address: "Paris", price_per_day: 9)
file_hive_aurore_1 = File.open("db/fixtures/rouge.jpeg")
hive_aurore_1.photo.attach(io: file_hive_aurore_1, filename: 'rouge.jpeg', content_type: 'image/jpeg')
hive_aurore_1.save!

hive_aurore_2 = Hive.create!(queen: aurore, name: "ruche bleu", description: "une bleu ruche située au bord de l'eau", address: "Perpignan", price_per_day: 10)
file_hive_aurore_2 = File.open("db/fixtures/bleu.jpeg")
hive_aurore_2.photo.attach(io: file_hive_aurore_2, filename: 'bleu.jpeg', content_type: 'image/jpeg')
hive_aurore_2.save!


Reservation.create!(user: corentin, hive: hive_shiyun_1, total_price: 9, start_date: Date.today, end_date: Date.today + 3.days)
Reservation.create!(user: val, hive: hive_shiyun_2, total_price: 36, start_date: Date.today, end_date: Date.today + 6.days)
Reservation.create!(user: val, hive: hive_shiyun_1, total_price: 9, start_date: Date.today, end_date: Date.today + 3.days)
Reservation.create!(user: corentin, hive: hive_aurore_1, total_price: 81, start_date: Date.today, end_date: Date.today + 9.days)
Reservation.create!(user: corentin, hive: hive_aurore_2, total_price: 120, start_date: Date.today, end_date: Date.today + 12.days)
