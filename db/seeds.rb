require "open-uri"

Reservation.destroy_all
Hive.destroy_all
User.destroy_all

corentin = User.new(first_name: "Corentin", last_name: "C.", email: "corentin@test.com", password: "password")
file_corentin = File.open("db/fixtures/bee3.png")
corentin.photo.attach(io: file_corentin, filename: 'bee3.png', content_type: 'image/png')
corentin.save!

hugo = User.new(first_name: "Hugo", last_name: "D.", email: "hugo@test.com", password: "password")
file_hugo = File.open("db/fixtures/hugo.png")
hugo.photo.attach(io: file_hugo, filename: 'hugo.png', content_type: 'image/png')
hugo.save!

jj = User.new(first_name: "JJ", last_name: "B.", email: "jj@test.com", password: "password")
file_jj = File.open("db/fixtures/jj.png")
jj.photo.attach(io: file_jj, filename: 'jj.png', content_type: 'image/png')
jj.save!

maya = User.new(first_name: "maya", last_name: "B.", email: "maya@test.com", password: "password")
file_maya = File.open("db/fixtures/maya.png")
maya.photo.attach(io: file_maya, filename: 'maya.png', content_type: 'image/png')
maya.save!

miel_pops = User.new(first_name: "miel_pops", last_name: "B.", email: "mielpops@test.com", password: "password")
file_miel_pops = File.open("db/fixtures/miel_pops.jpg")
miel_pops.photo.attach(io: file_miel_pops, filename: 'miel_pops.jpg', content_type: 'image/png')
miel_pops.save!

shiyun = User.create!(first_name: "Shiyun", last_name: "S.", email: "shiyun@test.com", password: "password")
file_shiyun = File.open("db/fixtures/bee4.png")
shiyun.photo.attach(io: file_shiyun, filename: 'bee4.png', content_type: 'image/png')
shiyun.save!

val = User.create!(first_name: "Val", last_name: "V.", email: "valentin@test.com", password: "password")
file_val = File.open("db/fixtures/bee2.png")
val.photo.attach(io: file_val, filename: 'bee2.png', content_type: 'image/png')
val.save!

aurore = User.create!(first_name: "Aurore", last_name: "A.", email: "aurore@test.com", password: "password")
file_aurore = File.open("db/fixtures/bee1.png")
aurore.photo.attach(io: file_aurore, filename: 'bee1.png', content_type: 'image/png')
aurore.save!

hive_shiyun_1 = Hive.create!(queen: shiyun, name: "La ruche sous les étoiles",
                             description: "Une ruche si haute dans les montagnes qu'on croirait
                             pouvoir toucher les étoiles du bout des ailes.",
                             address: "2 Rue de la Mabilais, 35000 Rennes", price_per_day: 9)
file_hive_shiyun_1 = File.open("db/fixtures/yellow.jpeg")
hive_shiyun_1.photo.attach(io: file_hive_shiyun_1, filename: 'yellow.jpeg', content_type: 'image/jpeg')
hive_shiyun_1.save!

hive_shiyun_2 = Hive.create!(queen: shiyun, name: "La ruche au moulin", description: "Évadez-vous le temps d'un instant,
                             quittez la routine 'bzz, butin, dodo'. Venez vous dégourdir les ailes dans cette ruche
                             située au pied d'un vieux moulin à eau (pas de vent ici).",
                             address: "8 Pl. du Parlement de Bretagne, 35000 Rennes", price_per_day: 15)
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

hive_shiyun_3 = Hive.create!(queen: shiyun, name: "La ruche wagonaise", description: "Une odeur de souffre
                            ... mais aussi une odeur charmante qui rapelle les premiers jours du printemps
                            et ses odeurs agréables. Bzz Bzzzt!",
                            address: "10 Pass. de la Poule Noire, 44000 Nantes", price_per_day: 4)
file_hive_shiyun_3 = File.open("db/fixtures/ruche_wagon.jpeg")
hive_shiyun_3.photo.attach(io: file_hive_shiyun_3, filename: 'ruche_wagon.jpeg', content_type: 'image/jpeg')
hive_shiyun_3.save!

hive_aurore_3 = Hive.create!(queen: aurore, name: "La ruche sportive", description: "Le calme reigne près de
                            ce gymnase en pleine ville. Proche d'un parc ou de nombreux arbres et fleurs sont en émoi, endroit parfait
                            Pour des vacances sportives, nature et tranquilité ! Bzz Bz Bzzzzz!",
                            address: "13 Bd Clovis Constant, 44000 Nantes", price_per_day: 3)
file_hive_aurore_3 = File.open("db/fixtures/ruche_sport.jpeg")
hive_aurore_3.photo.attach(io: file_hive_aurore_3, filename: 'ruche_sport.jpeg', content_type: 'image/jpeg')
hive_aurore_3.save!

hive_corentin_1 = Hive.create!(queen: corentin, name: "La ruche du stade", description: "Une ruche proche de vous et de vos joueurs, toujours ensemble, toujours en avant",
  address: "Rue du manoir, 22200 Guingamp", price_per_day: 7)
file_hive_corentin_1 = File.open("db/fixtures/roudourou.jpg")
hive_corentin_1.photo.attach(io: file_hive_corentin_1, filename: 'roudourou.jpg', content_type: 'image/jpeg')
hive_corentin_1.save!

hive_miel_pops_1 = Hive.create!(queen: miel_pops, name: "La ruche de votre petit déjeuner", description: "Le soleil nous réveille, il fait beau, il fait chaud, c'est le moment pour
  .... MIEL POPS, MIAM MIAM, TROP BON CRUNCH CRUNCH CRUNCH !!!",
  address: "2 La Marre, 35440 Montreuil-sur-Ille", price_per_day: 6.9)
file_hive_miel_pops_1 = File.open("db/fixtures/ruche_miel_pops.jpg")
hive_miel_pops_1.photo.attach(io: file_hive_miel_pops_1, filename: 'ruche_miel_pops.jpg', content_type: 'image/jpeg')
hive_miel_pops_1.save!

hive_jj_1 = Hive.create!(queen: jj, name: "La ruche posey", description: "Venez vous détendre dans une ruche au milieu des champs de chanvres,
  afin de vous reposez le cerveau et les ailes, tout en écoutant de la reggae",
  address: "7PWC+XFJ, Nine Mile, Jamaïque", price_per_day: 11)
file_hive_jj_1 = File.open("db/fixtures/abeille_cannabis.jpg")
hive_jj_1.photo.attach(io: file_hive_jj_1, filename: 'abeille_cannabis.jpg', content_type: 'image/jpeg')
hive_jj_1.save!

hive_hugo_1 = Hive.create!(queen: hugo, name: "La ruche nouvelle génération", description: "Venez produire votre petite dose de miel, sans risquer de vous faire enfumer",
  address: "2 Place Camille Jullian, 33000 Bordeaux", price_per_day: 8.5)
file_hive_hugo_1 = File.open("db/fixtures/flow_hive.jpg")
hive_hugo_1.photo.attach(io: file_hive_hugo_1, filename: 'flow_hive.jpg', content_type: 'image/jpeg')
hive_hugo_1.save!

hive_maya_3 = Hive.create!(queen: maya, name: "La ruche enfantine", description: "Retrouvez une partie de votre enfance dans cette ruche 100% plastique",
  address: "Boulevard de Parc, 77700 Coupvray", price_per_day: 2)
file_hive_maya_3 = File.open("db/fixtures/maya_ruche.jpg")
hive_maya_3.photo.attach(io: file_hive_maya_3, filename: 'maya_ruche.jpg', content_type: 'image/jpeg')
hive_maya_3.save!

Reservation.create!(user: corentin, hive: hive_shiyun_1, total_price: 27, start_date: Date.today, end_date: Date.today + 3.days)
Reservation.create!(user: val, hive: hive_shiyun_2, total_price: 90, start_date: Date.today, end_date: Date.today + 6.days)
Reservation.create!(user: val, hive: hive_shiyun_1, total_price: 27, start_date: Date.today, end_date: Date.today + 3.days)
Reservation.create!(user: corentin, hive: hive_aurore_1, total_price: 90, start_date: Date.today, end_date: Date.today + 9.days)
Reservation.create!(user: corentin, hive: hive_aurore_2, total_price: 60, start_date: Date.today, end_date: Date.today + 12.days)

Reservation.create!(user: hugo, hive: hive_jj_1, total_price: 66, start_date: Date.new(2019, 12, 25), end_date: Date.new(2020, 1, 1), status: "accepted")
Reservation.create!(user: jj, hive: hive_miel_pops_1, total_price: 69, start_date: Date.new(2022, 7, 1), end_date: Date.new(2020, 7, 11), status: "pending")
Reservation.create!(user: maya, hive: hive_hugo_1, total_price: 51, start_date: Date.new(2020, 8, 1), end_date: Date.new(2020, 8, 7), status: "declined")
Reservation.create!(user: miel_pops, hive: hive_hugo_1, total_price: 59.5, start_date: Date.new(2020, 8, 1), end_date: Date.new(2020, 8, 8), status: "accepted")
