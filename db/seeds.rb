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


prop1 = User.create!(email: 'adrien@gmail.com', password: '123456', sur_name: "Adrien", first_name: "Lemoine", role: "Propriétaire", phone: "06 03 03 03 33", address: "33 rue du Grand Mesnil 78600")
prop2 = User.create!(email: 'yann@gmail.com', password: '123456', sur_name: "Yann", first_name: "Genart", role: "Propriétaire", phone: "06 03 03 03 33", address: "12 rue Henry de Verneuil 75019")
prop3 = User.create!(email: 'mathieu@gmail.com', password: '123456', sur_name: "Mathieu", first_name: "Dupont", role: "Propriétaire", phone: "06 03 03 03 33", address: "106 avenue de Mons 95600")
prop4 = User.create!(email: 'henry@gmail.com', password: '123456', sur_name: "Henry", first_name: "Lepôtre", role: "Propriétaire", phone: "06 03 03 03 33", address: "4 place de Bornant 94400")


empl1 = User.create!(email: 'empl1@gmail.com', password: '123456', sur_name: "Legros", first_name: "Mathilde", role: "Employée", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600", remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1535965874/yann.jpg")
empl2 = User.create!(email: 'empl2@gmail.com', password: '123456', sur_name: "Perrin", first_name: "Thierry", role: "Employée", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600", remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1535965808/mat.jpg")
empl3 = User.create!(email: 'empl3@gmail.com', password: '123456', sur_name: "Legrand", first_name: "Eric", role: "Employée", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600", remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1535965803/tronche.jpg")
empl4 = User.create!(email: 'empl4@gmail.com', password: '123456', sur_name: "Robert", first_name: "David", role: "Employée", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600", remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1535967303/image.png")
boss1 = User.create!(email: 'boss1@gmail.com', password: '123456', sur_name: "Ceysens", first_name: "Violette", role: "Manager", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600", admin: true)


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
shoe3 = ShoeMaker.create!(name: 'Macron', email: 'Marcon@gmail.com', phone: '3333333333', slug: 'pence')
shoe4 = ShoeMaker.create!(name: 'Merkel', email: 'Merkel@gmail.com', phone: '4444444444', slug: 'balladur')

com1 = Comment.create!(description: "Cheval malade.")
com2 = Comment.create!(description: "Cheval boiteux, téléphoner au vétérinaire.")
com3 = Comment.create!(description: "En pleine forme.")
com4 = Comment.create!(description: "Sale.")


ant1 = Antidote.create(name: "Grippe", slug: "grippe")
ant2 = Antidote.create(name: "Rhinopneumonie", slug: "rhinopneumonie")
ant3 = Antidote.create(name: "Tétanos", slug: "tétanos")
ant4 = Antidote.create(name: "Rage", slug: "rage")


horse1 = Horse.create!(name: "Frosty", box: 1 , formula: 'one', user_id: prop1.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_01.jpg")
horse2 = Horse.create!(name: "Belle des Neiges", box: 2 , formula: 'one', user_id: prop2.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_02.jpg")
horse3 = Horse.create!(name: "Sophie", box: 3 , formula: 'two', user_id: prop4.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_04.jpg")
# horse4 = Horse.create!(name: "Bobby", box: 4 , formula: 'two', user_id: prop1.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_05.jpg")
# horse5 = Horse.create!(name: "Tony", box: 5 , formula: 'two', user_id: prop1.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_06.jpg")
# horse6 = Horse.create!(name: "Tom", box: 7 , formula: 'three', user_id: prop3.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_07.jpg")
# horse7 = Horse.create!(name: "Capuccin", box: 8 , formula: 'three', user_id: prop4.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_09.jpg")

#TASKS
#horse 1
#food
task1 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task2 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 12:00:00'), end_time: DateTime.parse('5th Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task3 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 18:00:00'), end_time: DateTime.parse('5th Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task4 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task5 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 12:00:00'), end_time: DateTime.parse('5th Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task6 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 18:00:00'), end_time: DateTime.parse('5th Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task7 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task8 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 12:00:00'), end_time: DateTime.parse('5th Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task9 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 18:00:00'), end_time: DateTime.parse('5th Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)

task10 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task11 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 12:00:00'), end_time: DateTime.parse('6th Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task12 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 18:00:00'), end_time: DateTime.parse('6th Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task13 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task14 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 12:00:00'), end_time: DateTime.parse('6th Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task15 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 18:00:00'), end_time: DateTime.parse('6th Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task16 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task17 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 12:00:00'), end_time: DateTime.parse('6th Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task18 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 18:00:00'), end_time: DateTime.parse('6th Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)

task19 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task20 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 12:00:00'), end_time: DateTime.parse('7th Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task21 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 18:00:00'), end_time: DateTime.parse('7th Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task22 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task23 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 12:00:00'), end_time: DateTime.parse('7th Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task24 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 18:00:00'), end_time: DateTime.parse('7th Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task25 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task26 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 12:00:00'), end_time: DateTime.parse('7th Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task27 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 18:00:00'), end_time: DateTime.parse('7th Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)

task28 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task29 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 12:00:00'), end_time: DateTime.parse('8th Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task30 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 18:00:00'), end_time: DateTime.parse('8th Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse1.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task31 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task32 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 12:00:00'), end_time: DateTime.parse('8th Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task33 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 18:00:00'), end_time: DateTime.parse('8th Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse1.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task34 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task35 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 12:00:00'), end_time: DateTime.parse('8th Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task36 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 18:00:00'), end_time: DateTime.parse('8th Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse1.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)



#activity

##Paddock (lundi, mardi, mercredi, jeudi, vendredi)
task37 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3rd Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act1.id, weekly: true, monthly: false)
task38 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act1.id, weekly: true, monthly: false)
task39 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act1.id, weekly: true, monthly: false)
task40 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act1.id, weekly: true, monthly: false)
task41 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act1.id, weekly: true, monthly: false)

##Marche (lundi, mercredi, vendredi, samedi)
task42 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3rd Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act2.id, weekly: true, monthly: false)
task43 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act2.id, weekly: true, monthly: false)
task44 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act2.id, weekly: true, monthly: false)
task45 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act2.id, weekly: true, monthly: false)


##Promenade (mardi, jeudi, dimanche)
task46 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act3.id, weekly: true, monthly: false)
task47 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act3.id, weekly: true, monthly: false)
task48 = Task.create!(doing: false, done: false, start_time: DateTime.parse('9th Sept 2018 08:00:00'), end_time: DateTime.parse('9th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act3.id, weekly: true, monthly: false)


##Saut (mercredi, vendredi, samedi)
task49 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act4.id, weekly: true, monthly: false)
task50 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act4.id, weekly: true, monthly: false)
task51 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), horse_id: horse1.id, activity_id: act4.id, weekly: true, monthly: false)


#medecine
##med 1 (lundi, mercredi, samedi)
task52 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3rd Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse1.id, medecine_id: medic1.id, weekly: true, monthly: false)
task53 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse1.id, medecine_id: medic1.id, weekly: true, monthly: false)
task54 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), horse_id: horse1.id, medecine_id: medic1.id, weekly: true, monthly: false)

##med 2 (mardi, mercredi, vendredi)
task55 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse1.id, medecine_id: medic2.id, weekly: true, monthly: false)
task56 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse1.id, medecine_id: medic2.id, weekly: true, monthly: false)
task57 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), horse_id: horse1.id, medecine_id: medic2.id, weekly: true, monthly: false)

##med3 (vendredi)
task58 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), horse_id: horse1.id, medecine_id: medic3.id, weekly: true, monthly: false)


#vet
task59 = Task.create!(doing: false, done: false, start_time: DateTime.parse('15th Sept 2018 08:00:00'), end_time: DateTime.parse('15th Sept 2018 09:00:00'), horse_id: horse1.id, vetenary_id: vet1.id, weekly: false, monthly: false)

#shoe
task60 = Task.create!(doing: false, done: false, start_time: DateTime.parse('16th Sept 2018 08:00:00'), end_time: DateTime.parse('16th Sept 2018 09:00:00'), horse_id: horse1.id, shoe_maker_id: shoe1.id, weekly: false, monthly: false)



# #horse 2
#food

task61 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task62 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 12:00:00'), end_time: DateTime.parse('5th Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task63 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 18:00:00'), end_time: DateTime.parse('5th Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task64 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task65 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 12:00:00'), end_time: DateTime.parse('5th Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task66 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 18:00:00'), end_time: DateTime.parse('5th Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task67 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task68 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 12:00:00'), end_time: DateTime.parse('5th Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task69 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 18:00:00'), end_time: DateTime.parse('5th Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)

task70 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task71 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 12:00:00'), end_time: DateTime.parse('6th Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task72 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 18:00:00'), end_time: DateTime.parse('6th Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task73 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task74 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 12:00:00'), end_time: DateTime.parse('6th Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task75 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 18:00:00'), end_time: DateTime.parse('6th Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task76 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task77 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 12:00:00'), end_time: DateTime.parse('6th Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task78 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 18:00:00'), end_time: DateTime.parse('6th Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)

task79 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task80 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 12:00:00'), end_time: DateTime.parse('7th Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task81 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 18:00:00'), end_time: DateTime.parse('7th Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task82 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task83 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 12:00:00'), end_time: DateTime.parse('7th Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task84 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 18:00:00'), end_time: DateTime.parse('7th Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task85 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task86 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 12:00:00'), end_time: DateTime.parse('7th Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task87 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 18:00:00'), end_time: DateTime.parse('7th Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)

task88 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task89 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 12:00:00'), end_time: DateTime.parse('8th Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task90 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 18:00:00'), end_time: DateTime.parse('8th Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse2.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task91 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task92 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 12:00:00'), end_time: DateTime.parse('8th Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task93 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 18:00:00'), end_time: DateTime.parse('8th Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse2.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task94 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task95 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 12:00:00'), end_time: DateTime.parse('8th Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task96 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 18:00:00'), end_time: DateTime.parse('8th Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse2.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)


#activity

##Paddock (lundi, mardi, mercredi, jeudi, vendredi)
task97 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3rd Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act1.id, weekly: true, monthly: false)
task98 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act1.id, weekly: true, monthly: false)
task99 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act1.id, weekly: true, monthly: false)
task100 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act1.id, weekly: true, monthly: false)
task101 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act1.id, weekly: true, monthly: false)

##Marche (lundi, mercredi, vendredi, samedi)
task102 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3rd Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act2.id, weekly: true, monthly: false)
task103 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act2.id, weekly: true, monthly: false)
task104 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act2.id, weekly: true, monthly: false)
task105 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act2.id, weekly: true, monthly: false)


##Promenade (mardi, jeudi, dimanche)
task106 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act3.id, weekly: true, monthly: false)
task107 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act3.id, weekly: true, monthly: false)
task108 = Task.create!(doing: false, done: false, start_time: DateTime.parse('9th Sept 2018 08:00:00'), end_time: DateTime.parse('9th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act3.id, weekly: true, monthly: false)


##Saut (mercredi, vendredi, samedi)
task109 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act4.id, weekly: true, monthly: false)
task110 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act4.id, weekly: true, monthly: false)
task111 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), horse_id: horse2.id, activity_id: act4.id, weekly: true, monthly: false)


#medecine
##med 1 (lundi, mercredi, samedi)
task112 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3rd Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse2.id, medecine_id: medic1.id, weekly: true, monthly: false)
task113 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse2.id, medecine_id: medic1.id, weekly: true, monthly: false)
task114 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), horse_id: horse2.id, medecine_id: medic1.id, weekly: true, monthly: false)

##med 2 (mardi, mercredi, vendredi)
task115 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse2.id, medecine_id: medic2.id, weekly: true, monthly: false)
task116 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse2.id, medecine_id: medic2.id, weekly: true, monthly: false)
task117 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), horse_id: horse2.id, medecine_id: medic2.id, weekly: true, monthly: false)

##med3 (vendredi)
task118 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), horse_id: horse2.id, medecine_id: medic3.id, weekly: true, monthly: false)


#vet
task119 = Task.create!(doing: false, done: false, start_time: DateTime.parse('15th Sept 2018 08:00:00'), end_time: DateTime.parse('15th Sept 2018 09:00:00'), horse_id: horse2.id, vetenary_id: vet1.id, weekly: false, monthly: false)

#shoe
task120 = Task.create!(doing: false, done: false, start_time: DateTime.parse('16th Sept 2018 08:00:00'), end_time: DateTime.parse('16th Sept 2018 09:00:00'), horse_id: horse2.id, shoe_maker_id: shoe1.id, weekly: false, monthly: false)


# #horse 3
#food

task121 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task122 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 12:00:00'), end_time: DateTime.parse('5th Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task124 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 18:00:00'), end_time: DateTime.parse('5th Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task125 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task126 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 12:00:00'), end_time: DateTime.parse('5th Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task127 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 18:00:00'), end_time: DateTime.parse('5th Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task128 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task129 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 12:00:00'), end_time: DateTime.parse('5th Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task130 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 18:00:00'), end_time: DateTime.parse('5th Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)

task131 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task132 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 12:00:00'), end_time: DateTime.parse('6th Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task133 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 18:00:00'), end_time: DateTime.parse('6th Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task134 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task135 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 12:00:00'), end_time: DateTime.parse('6th Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task136 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 18:00:00'), end_time: DateTime.parse('6th Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task137 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task138 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 12:00:00'), end_time: DateTime.parse('6th Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task139 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 18:00:00'), end_time: DateTime.parse('6th Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)

task140 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task141 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 12:00:00'), end_time: DateTime.parse('7th Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task142 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 18:00:00'), end_time: DateTime.parse('7th Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task143 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task144 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 12:00:00'), end_time: DateTime.parse('7th Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task145 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 18:00:00'), end_time: DateTime.parse('7th Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task146 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task147 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 12:00:00'), end_time: DateTime.parse('7th Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task148 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 18:00:00'), end_time: DateTime.parse('7th Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)

task149 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task150 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 12:00:00'), end_time: DateTime.parse('8th Sept 2018 13:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task151 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 18:00:00'), end_time: DateTime.parse('8th Sept 2018 20:00:00'), food_quantity: 1, horse_id: horse3.id, food_type_id: food1.id, daily: true, weekly: true, monthly: false)
task152 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task153 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 12:00:00'), end_time: DateTime.parse('8th Sept 2018 13:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task154 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 18:00:00'), end_time: DateTime.parse('8th Sept 2018 20:00:00'), food_quantity: 2, horse_id: horse3.id, food_type_id: food2.id, daily: true, weekly: true, monthly: false)
task155 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task156 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 12:00:00'), end_time: DateTime.parse('8th Sept 2018 13:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)
task157 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 18:00:00'), end_time: DateTime.parse('8th Sept 2018 20:00:00'), food_quantity: 3, horse_id: horse3.id, food_type_id: food3.id, daily: true, weekly: true, monthly: false)



#activity

##Paddock (lundi, mardi, mercredi, jeudi, vendredi)
task158 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3rd Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act1.id, weekly: true, monthly: false)
task159 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act1.id, weekly: true, monthly: false)
task160 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act1.id, weekly: true, monthly: false)
task170 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act1.id, weekly: true, monthly: false)
task171 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act1.id, weekly: true, monthly: false)

##Marche (lundi, mercredi, vendredi, samedi)
task172 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3rd Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act2.id, weekly: true, monthly: false)
task173 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act2.id, weekly: true, monthly: false)
task174 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act2.id, weekly: true, monthly: false)
task175 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act2.id, weekly: true, monthly: false)


##Promenade (mardi, jeudi, dimanche)
task176 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('4th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act3.id, weekly: true, monthly: false)
task177 = Task.create!(doing: false, done: false, start_time: DateTime.parse('6th Sept 2018 08:00:00'), end_time: DateTime.parse('6th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act3.id, weekly: true, monthly: false)
task178 = Task.create!(doing: false, done: false, start_time: DateTime.parse('9th Sept 2018 08:00:00'), end_time: DateTime.parse('9th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act3.id, weekly: true, monthly: false)


##Saut (mercredi, vendredi, samedi)
task179 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act4.id, weekly: true, monthly: false)
task180 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act4.id, weekly: true, monthly: false)
task181 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), horse_id: horse3.id, activity_id: act4.id, weekly: true, monthly: false)


#medecine
##med 1 (lundi, mercredi, samedi)
task182 = Task.create!(doing: false, done: false, start_time: DateTime.parse('3rd Sept 2018 08:00:00'), end_time: DateTime.parse('3rd Sept 2018 09:00:00'), horse_id: horse3.id, medecine_id: medic1.id, weekly: true, monthly: false)
task183 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse3.id, medecine_id: medic1.id, weekly: true, monthly: false)
task184 = Task.create!(doing: false, done: false, start_time: DateTime.parse('8th Sept 2018 08:00:00'), end_time: DateTime.parse('8th Sept 2018 09:00:00'), horse_id: horse3.id, medecine_id: medic1.id, weekly: true, monthly: false)

##med 2 (mardi, mercredi, vendredi)
task185 = Task.create!(doing: false, done: false, start_time: DateTime.parse('4th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse3.id, medecine_id: medic2.id, weekly: true, monthly: false)
task186 = Task.create!(doing: false, done: false, start_time: DateTime.parse('5th Sept 2018 08:00:00'), end_time: DateTime.parse('5th Sept 2018 09:00:00'), horse_id: horse3.id, medecine_id: medic2.id, weekly: true, monthly: false)
task187 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), horse_id: horse3.id, medecine_id: medic2.id, weekly: true, monthly: false)

##med3 (vendredi)
task188 = Task.create!(doing: false, done: false, start_time: DateTime.parse('7th Sept 2018 08:00:00'), end_time: DateTime.parse('7th Sept 2018 09:00:00'), horse_id: horse3.id, medecine_id: medic3.id, weekly: true, monthly: false)


#vet
task189 = Task.create!(doing: false, done: false, start_time: DateTime.parse('15th Sept 2018 08:00:00'), end_time: DateTime.parse('15th Sept 2018 09:00:00'), horse_id: horse3.id, vetenary_id: vet1.id, weekly: false, monthly: false)

#shoe
task190 = Task.create!(doing: false, done: false, start_time: DateTime.parse('16th Sept 2018 08:00:00'), end_time: DateTime.parse('16th Sept 2018 09:00:00'), horse_id: horse3.id, shoe_maker_id: shoe1.id, weekly: false, monthly: false)



########## DO NOT REMOVE ##########
task500 = Task.create!(doing: false, done: false, start_time: Date.today + 2, end_time: Date.today + 2 , horse_id: horse1.id, shoe_maker_id: shoe1.id, weekly: false, monthly: true)
task501 = Task.create!(doing: false, done: false, start_time: Date.today + 1, end_time: Date.today + 1, horse_id: horse1.id, antidote_id: ant1.id, weekly: false, monthly: false)
task502 = Task.create!(doing: false, done: false, start_time: Date.today + 2, end_time: Date.today + 2, horse_id: horse2.id, antidote_id: ant2.id, weekly: false, monthly: false)
task503 = Task.create!(doing: false, done: false, start_time: Date.today + 20, end_time: Date.today + 20, horse_id: horse3.id, antidote_id: ant3.id, weekly: false, monthly: false)
task504 = Task.create!(doing: false, done: false, start_time: Date.today + 2, end_time: Date.today + 2, horse_id: horse2.id, vetenary_id: vet1.id, weekly: false, monthly: true)



p "C'est uploadé !"
# p Activity.all
# p FoodType.all
# p Medecine.all
# p Vetenary.all
# p ShoeMaker.all
# p Medecine.all
# p Antidote.all
# p Comment.all
# p Communication.all
# p Horse.all
# p User.all
