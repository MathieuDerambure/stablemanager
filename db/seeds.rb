# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

p "Je destroy_all de Task"
p "Je destroy_all de Activity"
p "Je destroy_all de FoodType"
p "Je destroy_all de Medecine"
p "Je destroy_all de Vetenary"
p "Je destroy_all de ShoeMaker"
p "Je destroy_all de Comment"
p "Je destroy_all de Horse"
p "Je destroy_all de User"

Task.destroy_all
Activity.destroy_all
FoodType.destroy_all
Medecine.destroy_all
Vetenary.destroy_all
ShoeMaker.destroy_all
Comment.destroy_all
Horse.destroy_all
User.destroy_all


act1 = Activity.create!(name: "Paddock")
act2 = Activity.create!(name: "Marche")
act3 = Activity.create!(name: "Promenade")
act4 = Activity.create!(name: "Saut")

food1 = FoodType.create!(name: "Granulé")
food2 = FoodType.create!(name: "Floconnet")
food3 = FoodType.create!(name: "Winsor")

medic1 = Medecine.create!(name: "Drainage")
medic2 = Medecine.create!(name: "Ronaxan")
medic3 = Medecine.create!(name: "Equipalazone")

vet1 = Vetenary.create!(name: 'Dupont', email: 'dupont@gmail.com', phone: '1111111111')
vet2 = Vetenary.create!(name: 'Nollet', email: 'nollet@gmail.com', phone: '2222222222')
vet3 = Vetenary.create!(name: 'Rocky', email: 'rocky@gmail.com', phone: '3333333333')
vet4 = Vetenary.create!(name: 'Salmon', email: 'salmon@gmail.com', phone: '4444444444')
# vet5 = Vetenary.create!(name: 'Derambure', email: 'derambure@gmail.com', phone: '5555555555')
# vet6 = Vetenary.create!(name: 'Chazal', email: 'claire@gmail.com', phone: '6666666666')
# vet7 = Vetenary.create!(name: 'Saunier', email: 'saunier@gmail.com', phone: '7777777777')
# vet8 = Vetenary.create!(name: 'Papillard', email: 'papillard@gmail.com', phone: '8888888888')

shoe1 = ShoeMaker.create!(name: 'Trump', email: 'trump@gmail.com', phone: '1111111111')
shoe2 = ShoeMaker.create!(name: 'Kim', email: 'little_rocket_man@gmail.com', phone: '2222222222')
shoe3 = ShoeMaker.create!(name: 'Pence', email: 'pence@gmail.com', phone: '3333333333')
shoe4 = ShoeMaker.create!(name: 'Balladur', email: 'balladur@gmail.com', phone: '4444444444')
# shoe5 = ShoeMaker.create!(name: 'Chirac', email: 'patrick@gmail.com', phone: '5555555555')
# shoe6 = ShoeMaker.create!(name: 'Gayet', email: 'julie@gmail.com', phone: '6666666666')
# shoe7 = ShoeMaker.create!(name: 'Aubry', email: 'martine@gmail.com', phone: '7777777777')
# shoe8 = ShoeMaker.create!(name: 'Pasqua', email: 'charles@gmail.com', phone: '8888888888')

com1 = Comment.create!(description: "Cheval malade.")
com2 = Comment.create!(description: "Cheval boiteux, téléphoner au vétérinaire.")
com3 = Comment.create!(description: "En pleine forme.")
com4 = Comment.create!(description: "Sale.")

prop1 = User.create!(email: 'adrien@gmail.com', password: '123456', sur_name: "Johnson", first_name: "John", role: "Propriétaire", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")
prop2 = User.create!(email: 'yann@gmail.com', password: '123456', sur_name: "David", first_name: "Davida", role: "Propriétaire", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")
prop3 = User.create!(email: 'mathieu@gmail.com', password: '123456', sur_name: "Berta", first_name: "Bernadette", role: "Propriétaire", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")
prop4 = User.create!(email: 'olivier@gmail.com', password: '123456', sur_name: "Smith", first_name: "Alexa", role: "Propriétaire", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")
empl1 = User.create!(email: 'empl1@gmail.com', password: '123456', sur_name: "Ghost", first_name: "Mathilde", role: "Employée", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")
empl2 = User.create!(email: 'empl2@gmail.com', password: '123456', sur_name: "Hubby", first_name: "Britney", role: "Employée", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")
empl3 = User.create!(email: 'empl3@gmail.com', password: '123456', sur_name: "Benhad", first_name: "Fatima", role: "Employée", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")
empl4 = User.create!(email: 'empl4@gmail.com', password: '123456', sur_name: "Robert", first_name: "David", role: "Employée", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")
boss1 = User.create!(email: 'boss1@gmail.com', password: '123456', sur_name: "Theboss", first_name: "Bosswoman", role: "Manager", phone: "06 03 03 03 33", address: "33 rue Bidule Mesnil 78600")

horse1 = Horse.create!(name: "Frosty", box: 1 , formula: 'one', user_id: prop1.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_01.jpg")
horse2 = Horse.create!(name: "Belle des Neiges", box: 2 , formula: 'one', user_id: prop2.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_02.jpg")
horse3 = Horse.create!(name: "Bobby", box: 3 , formula: 'one', user_id: prop3.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_03.jpg")
horse4 = Horse.create!(name: "Sophie", box: 4 , formula: 'two', user_id: prop4.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_04.jpg")
horse5 = Horse.create!(name: "Bobby", box: 5 , formula: 'two', user_id: prop2.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_05.jpg")
horse6 = Horse.create!(name: "Tony", box: 6 , formula: 'two', user_id: prop1.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_06.jpg")
horse7 = Horse.create!(name: "Tom", box: 7 , formula: 'three', user_id: prop3.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_07.jpg")
horse8 = Horse.create!(name: "Capuccin", box: 8 , formula: 'three', user_id: prop4.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_09.jpg")
# horse9 = Horse.create!(name: "Speedy", box: 9 , formula: 'three', user_id: prop1.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_10.jpg")
# horse10 = Horse.create!(name: "Gonzales", box: 10 , formula: 'four', user_id: prop2.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_11.jpg")
# horse11 = Horse.create!(name: "Raymonde", box: 11 , formula: 'four', user_id: prop3.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_12.jpg")
# horse12 = Horse.create!(name: "Antoinette", box: 12 , formula: 'four', user_id: prop4.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_13.jpg")
# horse13 = Horse.create!(name: "Eric", box: 13 , formula: 'one', user_id: prop1.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_14.jpg")
# horse14 = Horse.create!(name: "Rebelle", box: 14 , formula: 'one', user_id: prop2.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_15.jpg")
# horse15 = Horse.create!(name: "Halliday", box: 15 , formula: 'one', user_id: prop3.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_16.jpg")
# horse16 = Horse.create!(name: "Madonna", box: 16 , formula: 'two', user_id: prop4.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_17.jpg")
# horse17 = Horse.create!(name: "Prince", box: 17 , formula: 'two', user_id: prop2.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_18.jpg")
# horse18 = Horse.create!(name: "Harry", box: 18 , formula: 'two', user_id: prop1.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_19.jpg")
# horse19 = Horse.create!(name: "Jeremy", box: 19 , formula: 'three', user_id: prop3.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_20.jpg")
# horse20 = Horse.create!(name: "Tony", box: 20 , formula: 'three', user_id: prop4.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_21.jpg")
# horse21 = Horse.create!(name: "Ronny", box: 21 , formula: 'three', user_id: prop1.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_22.jpg")
# horse22 = Horse.create!(name: "Boogy", box: 22 , formula: 'four', user_id: prop3.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_24.jpg")
# horse23 = Horse.create!(name: "Rock", box: 23 , formula: 'four', user_id: prop4.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_25.jpg")

task1 = Task.create!(doing: false, done: false, start_time: Date.today, end_time: Date.today, horse_id: horse1.id, food_type_id: food1.id, weekly: true, monthly: false)
task2 = Task.create!(doing: false, done: false, start_time: Date.today, end_time: Date.today, horse_id: horse1.id, activity_id: act1.id, weekly: true, monthly: false)
task3 = Task.create!(doing: true, done: false, start_time: Date.today, end_time: Date.today, horse_id: horse2.id, activity_id: act2.id, weekly: true, monthly: false)
task4 = Task.create!(doing: false, done: false, start_time: Date.today, end_time: Date.today, horse_id: horse2.id, activity_id: act3.id, weekly: true, monthly: false)
task5 = Task.create!(doing: true, done: true, start_time: Date.today, end_time: Date.today, horse_id: horse2.id, vetenary_id: vet1.id, comment_id: com1.id, weekly: false, monthly: false)
task6 = Task.create!(doing: false, done: true, start_time: Date.today, end_time: Date.today, horse_id: horse3.id, medecine_id: medic2.id, weekly: false, monthly: true)
task7 = Task.create!(doing: false, done: true, start_time: Date.today, end_time: Date.today, horse_id: horse4.id, shoe_maker_id: shoe1.id, weekly: false, monthly: true)
task8 = Task.create!(doing: false, done: false, start_time: Date.today, end_time: Date.today, horse_id: horse5.id, activity_id: act4.id, weekly: true, monthly: false)


p "C'est uploadé !"
p Activity.all
p FoodType.all
p Medecine.all
p Vetenary.all
p ShoeMaker.all
p Medecine.all
p Horse.all
p User.all
