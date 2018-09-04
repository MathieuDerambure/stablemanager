# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

p "Je destroy_all de Task"
p "Je destroy_all de Activity"
p "Je destroy_all de FoodType"
p "Je destroy_all de Medecine"
p "Je destroy_all de Vetenary"
p "Je destroy_all de ShoeMaker"
p "Je destroy_all de Comment"
p "Je destroy_all de Communication"
p "Je destroy_all de Horse"
p "Je destroy_all de User"

Task.destroy_all
Activity.destroy_all
FoodType.destroy_all
Medecine.destroy_all
Vetenary.destroy_all
ShoeMaker.destroy_all
Antidote.destroy_all
Comment.destroy_all
Communication.destroy_all
Horse.destroy_all
User.destroy_all


prop1 = User.create!(email: 'adrien@gmail.com', password: '123456', sur_name: "Johnson", first_name: "John", role: "Propriétaire", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")
prop2 = User.create!(email: 'yann@gmail.com', password: '123456', sur_name: "David", first_name: "Davida", role: "Propriétaire", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")
prop3 = User.create!(email: 'mathieu@gmail.com', password: '123456', sur_name: "Berta", first_name: "Bernadette", role: "Propriétaire", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")
prop4 = User.create!(email: 'olivier@gmail.com', password: '123456', sur_name: "Smith", first_name: "Alexa", role: "Propriétaire", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")

empl1 = User.create!(email: 'empl1@gmail.com', password: '123456', sur_name: "Ghost", first_name: "Mathilde", role: "Employée", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600", remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1535965874/yann.jpg")
empl2 = User.create!(email: 'empl2@gmail.com', password: '123456', sur_name: "Hubby", first_name: "Britney", role: "Employée", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600", remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1535965808/mat.jpg")
empl3 = User.create!(email: 'empl3@gmail.com', password: '123456', sur_name: "Benhad", first_name: "Fatima", role: "Employée", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600", remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1535965803/tronche.jpg")
empl4 = User.create!(email: 'empl4@gmail.com', password: '123456', sur_name: "Robert", first_name: "David", role: "Employée", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600", remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1535967303/image.png")
boss1 = User.create!(email: 'boss1@gmail.com', password: '123456', sur_name: "Theboss", first_name: "Bosswoman", role: "Manager", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")


comm1 = Communication.create!(message: "J'aurai 30 minutes de retard ce lundi.", user_id: empl1.id)
comm2 = Communication.create!(message: "La barrière de la grange est cassée.", user_id: empl2.id)
comm3 = Communication.create!(message: "Merci de ne plus laisser traîner de matériel dans la cours.", user_id: prop1.id)

act1 = Activity.create!(name: "Paddock", slug: "paddock")
act2 = Activity.create!(name: "Marche", slug: "marche")
act3 = Activity.create!(name: "Promenade", slug: "promenade")
act4 = Activity.create!(name: "Saut", slug: "saut")

food1 = FoodType.create!(name: "Granulé", slug: "granule")
food2 = FoodType.create!(name: "Floconnet", slug: "floconnet")
food3 = FoodType.create!(name: "Winsor", slug: "winsor")

medic1 = Medecine.create!(name: "Drainage", slug: "drainage")
medic2 = Medecine.create!(name: "Ronaxan", slug: "ronaxan")
medic3 = Medecine.create!(name: "Equipalazone", slug: "equipalazone")

vet1 = Vetenary.create!(name: 'Dupont', email: 'dupont@gmail.com', phone: '1111111111', slug: "dupont")
vet2 = Vetenary.create!(name: 'Nollet', email: 'nollet@gmail.com', phone: '2222222222', slug: "nollet")
vet3 = Vetenary.create!(name: 'Rocky', email: 'rocky@gmail.com', phone: '3333333333', slug: "rocky")
vet4 = Vetenary.create!(name: 'Salmon', email: 'salmon@gmail.com', phone: '4444444444', slug: "salmon")

shoe1 = ShoeMaker.create!(name: 'Trump', email: 'trump@gmail.com', phone: '1111111111', slug: 'trump')
shoe2 = ShoeMaker.create!(name: 'Kim', email: 'little_rocket_man@gmail.com', phone: '2222222222', slug: 'kim')
shoe3 = ShoeMaker.create!(name: 'Pence', email: 'pence@gmail.com', phone: '3333333333', slug: 'pence')
shoe4 = ShoeMaker.create!(name: 'Balladur', email: 'balladur@gmail.com', phone: '4444444444', slug: 'balladur')

com1 = Comment.create!(description: "Cheval malade.")
com2 = Comment.create!(description: "Cheval boiteux, téléphoner au vétérinaire.")
com3 = Comment.create!(description: "En pleine forme.")
com4 = Comment.create!(description: "Sale.")

Antidote.create(name: "Grippe", slug: "grippe")


horse1 = Horse.create!(name: "Frosty", box: 1 , formula: 'one', user_id: prop1.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_01.jpg")
horse2 = Horse.create!(name: "Belle des Neiges", box: 2 , formula: 'one', user_id: prop2.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_02.jpg")
horse3 = Horse.create!(name: "Sophie", box: 4 , formula: 'two', user_id: prop4.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_04.jpg")
# horse4 = Horse.create!(name: "Bobby", box: 5 , formula: 'two', user_id: prop2.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_05.jpg")
# horse5 = Horse.create!(name: "Tony", box: 6 , formula: 'two', user_id: prop1.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_06.jpg")
# horse6 = Horse.create!(name: "Tom", box: 7 , formula: 'three', user_id: prop3.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_07.jpg")
# horse7 = Horse.create!(name: "Capuccin", box: 8 , formula: 'three', user_id: prop4.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_09.jpg")

#TASKS
#horse 1
#food
task1 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, weekly: true, monthly: false)
task2 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 12:00:00'), end_time: DateTime.parse('4rd Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, weekly: true, monthly: false)
task3 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 18:00:00'), end_time: DateTime.parse('4rd Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, weekly: true, monthly: false)
task4 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, weekly: true, monthly: false)
task5 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 12:00:00'), end_time: DateTime.parse('4rd Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, weekly: true, monthly: false)
task6 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 18:00:00'), end_time: DateTime.parse('4rd Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, weekly: true, monthly: false)
task7 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, weekly: true, monthly: false)
task8 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 12:00:00'), end_time: DateTime.parse('4rd Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, weekly: true, monthly: false)
task9 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 18:00:00'), end_time: DateTime.parse('4rd Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, weekly: true, monthly: false)
#activity
task10 = Task.create!(doing: false, done: false, start_time: DateTime.parse('2th Sept 2018 08:00:00'), end_time: DateTime.parse('2rd Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act1.id, weekly: true, monthly: false)
task11 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3th Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act2.id, weekly: true, monthly: false)
task12 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act3.id, weekly: true, monthly: false)
#medecine
task13 = Task.create!(doing: false, done: false, start_time: DateTime.parse('2th Sept 2018 08:00:00'), end_time: DateTime.parse('2rd Sept 2018 09:00:00'), horse_id: horse1.id, medecine_id: medic1.id, weekly: true, monthly: false)
task14 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3th Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse1.id, medecine_id: medic2.id, weekly: true, monthly: false)
task15 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), horse_id: horse1.id, medecine_id: medic3.id, weekly: true, monthly: false)
#vet
task16 = Task.create!(doing: false, done: false, start_time: DateTime.parse('15th Sept 2018 08:00:00'), end_time: DateTime.parse('15rd Sept 2018 09:00:00'), horse_id: horse1.id, vetenary_id: vet1.id, weekly: false, monthly: false)
#shoe
task17 = Task.create!(doing: false, done: false, start_time: DateTime.parse('15th Sept 2018 08:00:00'), end_time: DateTime.parse('15rd Sept 2018 09:00:00'), horse_id: horse1.id, shoe_maker_id: shoe1.id, weekly: false, monthly: false)


#horse 2
#food
task18 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, weekly: true, monthly: false)
task19 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 12:00:00'), end_time: DateTime.parse('4rd Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, weekly: true, monthly: false)
task20 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 18:00:00'), end_time: DateTime.parse('4rd Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, weekly: true, monthly: false)
task21 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, weekly: true, monthly: false)
task22 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 12:00:00'), end_time: DateTime.parse('4rd Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, weekly: true, monthly: false)
task23 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 18:00:00'), end_time: DateTime.parse('4rd Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, weekly: true, monthly: false)
task24 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, weekly: true, monthly: false)
task25 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 12:00:00'), end_time: DateTime.parse('4rd Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, weekly: true, monthly: false)
task26 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 18:00:00'), end_time: DateTime.parse('4rd Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, weekly: true, monthly: false)
#activity
task27 = Task.create!(doing: false, done: false, start_time: DateTime.parse('2th Sept 2018 08:00:00'), end_time: DateTime.parse('2rd Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act1.id, weekly: true, monthly: false)
task28 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3th Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act2.id, weekly: true, monthly: false)
task29 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act3.id, weekly: true, monthly: false)
#medecine
task30 = Task.create!(doing: false, done: false, start_time: DateTime.parse('2th Sept 2018 08:00:00'), end_time: DateTime.parse('2rd Sept 2018 09:00:00'), horse_id: horse2.id, medecine_id: medic1.id, weekly: true, monthly: false)
task31 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3th Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse2.id, medecine_id: medic2.id, weekly: true, monthly: false)
task32 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), horse_id: horse2.id, medecine_id: medic3.id, weekly: true, monthly: false)
#vet
task33 = Task.create!(doing: false, done: false, start_time: DateTime.parse('15th Sept 2018 08:00:00'), end_time: DateTime.parse('15rd Sept 2018 09:00:00'), horse_id: horse2.id, vetenary_id: vet1.id, weekly: false, monthly: false)
#shoe
task34 = Task.create!(doing: false, done: false, start_time: DateTime.parse('15th Sept 2018 08:00:00'), end_time: DateTime.parse('15rd Sept 2018 09:00:00'), horse_id: horse2.id, shoe_maker_id: shoe1.id, weekly: false, monthly: false)


#horse 3
#food
task35 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, weekly: true, monthly: false)
task36 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 12:00:00'), end_time: DateTime.parse('4rd Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, weekly: true, monthly: false)
task37 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 18:00:00'), end_time: DateTime.parse('4rd Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, weekly: true, monthly: false)
task38 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, weekly: true, monthly: false)
task39 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 12:00:00'), end_time: DateTime.parse('4rd Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, weekly: true, monthly: false)
task40 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 18:00:00'), end_time: DateTime.parse('4rd Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, weekly: true, monthly: false)
task41 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, weekly: true, monthly: false)
task42 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 12:00:00'), end_time: DateTime.parse('4rd Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, weekly: true, monthly: false)
task43 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 18:00:00'), end_time: DateTime.parse('4rd Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, weekly: true, monthly: false)
#activity
task44 = Task.create!(doing: false, done: false, start_time: DateTime.parse('2th Sept 2018 08:00:00'), end_time: DateTime.parse('2rd Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act1.id, weekly: true, monthly: false)
task45 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3th Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act2.id, weekly: true, monthly: false)
task46 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act3.id, weekly: true, monthly: false)
#medecine
task47 = Task.create!(doing: false, done: false, start_time: DateTime.parse('2th Sept 2018 08:00:00'), end_time: DateTime.parse('2rd Sept 2018 09:00:00'), horse_id: horse3.id, medecine_id: medic1.id, weekly: true, monthly: false)
task48 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3th Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse3.id, medecine_id: medic2.id, weekly: true, monthly: false)
task49 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4rd Sept 2018 09:00:00'), horse_id: horse3.id, medecine_id: medic3.id, weekly: true, monthly: false)
#vet
task50 = Task.create!(doing: false, done: false, start_time: DateTime.parse('15th Sept 2018 08:00:00'), end_time: DateTime.parse('15rd Sept 2018 09:00:00'), horse_id: horse3.id, vetenary_id: vet1.id, weekly: false, monthly: false)
#shoe
task51 = Task.create!(doing: false, done: false, start_time: DateTime.parse('15th Sept 2018 08:00:00'), end_time: DateTime.parse('15rd Sept 2018 09:00:00'), horse_id: horse3.id, shoe_maker_id: shoe1.id, weekly: false, monthly: false)






p "C'est uploadé !"
p Activity.all
p FoodType.all
p Medecine.all
p Vetenary.all
p ShoeMaker.all
p Medecine.all
p Antidote.all
p Comment.all
p Communication.all
p Horse.all
p User.all
