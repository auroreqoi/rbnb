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
file_corentin = File.open("db/fixtures/bee3.png")
corentin.photo.attach(io: file_corentin, filename: 'bee3.png', content_type: 'image/png')
corentin.save!

shiyun = User.create!(first_name: "Shiyun", last_name: "S", email: "shiyun@test.com", password: "password")
file_shiyun = File.open("db/fixtures/bee4.png")
shiyun.photo.attach(io: file_shiyun, filename: 'bee4.png', content_type: 'image/png')
shiyun.save!

val = User.create!(first_name: "Val", last_name: "V", email: "valentin@test.com", password: "password")
file_val = File.open("db/fixtures/bee2.png")
val.photo.attach(io: file_val, filename: 'bee2.png', content_type: 'image/png')
val.save!

aurore = User.create!(first_name: "Aurore", last_name: "A", email: "aurore@test.com", password: "password")
file_aurore = File.open("db/fixtures/bee1.png")
aurore.photo.attach(io: file_aurore, filename: 'bee1.png', content_type: 'image/png')
aurore.save!

hive_shiyun_1 = Hive.create!(queen: shiyun, name: "La ruche sous les étoiles",
                             description: "Une ruche si haute dans les montagnes qu'on croirait
                             pouvoir toucher les étoiles du bout des ailes.",
                             address: "Emetteur TV Brest Roc'h Trédudon, 29410 Plounéour-Ménez", price_per_day: 9)
file_hive_shiyun_1 = File.open("db/fixtures/yellow.jpeg")
hive_shiyun_1.photo.attach(io: file_hive_shiyun_1, filename: 'yellow.jpeg', content_type: 'image/jpeg')
hive_shiyun_1.save!

hive_shiyun_2 = Hive.create!(queen: shiyun, name: "La ruche au moulin", description: "Évadez-vous le temps d'un instant,
                             quittez la routine 'bzz, butin, dodo'.Venez vous dégourdir les ailes dans cette ruche
                             située au pied d'un vieux moulin à eau (pas de vent ici).",
                             address: "La Vieille ville, 56220 Saint-Jacut-les-Pins", price_per_day: 15)
file_hive_shiyun_2 = File.open("db/fixtures/verte.webp")
hive_shiyun_2.photo.attach(io: file_hive_shiyun_2, filename: 'verte.webp', content_type: 'image/webp')
hive_shiyun_2.save!

hive_aurore_1 = Hive.create!(queen: aurore, name: "La ruche maritime", description: "L'odeur du pollen vous irrite,
                             venez prendre une bonne bouffée d'air iodé, la reine y est pirate et vous racontera
                             ses aventures les plus épiques lors de sa dernière transat.",
                             address: "Rue Albert de Mun, 29680 Roscoff", price_per_day: 10)
file_hive_aurore_1 = File.open("db/fixtures/rouge.jpeg")
hive_aurore_1.photo.attach(io: file_hive_aurore_1, filename: 'rouge.jpeg', content_type: 'image/jpeg')
hive_aurore_1.save!

hive_aurore_2 = Hive.create!(queen: aurore, name: "La ruche enchantée", description: "Cette ruche n'est pas féerique,non
                             ... Mais bien enchantée oui ! Ici, la reine vous fera oblier votre quotidien en vous
                             transportant dans des aventures où vous serez les actrices principales! Bzzz!",
                             address: "8 Rue du Pont, 56800 Loyat", price_per_day: 5)
file_hive_aurore_2 = File.open("db/fixtures/bleu.jpeg")
hive_aurore_2.photo.attach(io: file_hive_aurore_2, filename: 'bleu.jpeg', content_type: 'image/jpeg')
hive_aurore_2.save!

Reservation.create!(user: corentin, hive: hive_shiyun_1, total_price: 27, start_date: Date.today, end_date: Date.today + 3.days)
Reservation.create!(user: val, hive: hive_shiyun_2, total_price: 90, start_date: Date.today, end_date: Date.today + 6.days)
Reservation.create!(user: val, hive: hive_shiyun_1, total_price: 27, start_date: Date.today, end_date: Date.today + 3.days)
Reservation.create!(user: corentin, hive: hive_aurore_1, total_price: 90, start_date: Date.today, end_date: Date.today + 9.days)
Reservation.create!(user: corentin, hive: hive_aurore_2, total_price: 60, start_date: Date.today, end_date: Date.today + 12.days)
