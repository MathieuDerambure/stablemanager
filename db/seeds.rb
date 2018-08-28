# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

p "Je destroy_all de Activity"
p "Je destroy_all de FoodType"
p "Je destroy_all de Medecine"
p "Je destroy_all de Vetenary"
p "Je destroy_all de ShoeMaker"
p "Je destroy_all de Medecine"
p "Je destroy_all de Horse"
p "Je destroy_all de User"

Activity.destroy_all
FoodType.destroy_all
Medecine.destroy_all
Vetenary.destroy_all
ShoeMaker.destroy_all
Medecine.destroy_all
Horse.destroy_all
User.destroy_all

paddock = Activity.create!(name: "Paddock")
marche = Activity.create!(name: "Marche")
promenade = Activity.create!(name: "Promenade")
saut = Activity.create!(name: "Saut")

granule = FoodType.create!(name: "Granulé")
floconnet = FoodType.create!(name: "Floconnet")
winsor = FoodType.create!(name: "Winsor")

drainage = Medecine.create!(name: "Drainage")
ronaxan = Medecine.create!(name: "Ronaxan")
equipalazone = Medecine.create!(name: "Equipalazone")

dupont = Vetenary.create!(name: 'Dupont', email: 'dupont@gmail.com', phone: '1111111111')
nollet = Vetenary.create!(name: 'Nollet', email: 'nollet@gmail.com', phone: '2222222222')
rocky = Vetenary.create!(name: 'Rocky', email: 'rocky@gmail.com', phone: '3333333333')
salmon = Vetenary.create!(name: 'Salmon', email: 'salmon@gmail.com', phone: '4444444444')
derambure = Vetenary.create!(name: 'Derambure', email: 'derambure@gmail.com', phone: '5555555555')
chazal = Vetenary.create!(name: 'Chazal', email: 'claire@gmail.com', phone: '6666666666')
saunier = Vetenary.create!(name: 'Saunier', email: 'saunier@gmail.com', phone: '7777777777')
papillard = Vetenary.create!(name: 'Papillard', email: 'papillard@gmail.com', phone: '8888888888')

trump = ShoeMaker.create!(name: 'Trump', email: 'trump@gmail.com', phone: '1111111111')
kim = ShoeMaker.create!(name: 'Kim', email: 'little_rocket_man@gmail.com', phone: '2222222222')
pence = ShoeMaker.create!(name: 'Pence', email: 'pence@gmail.com', phone: '3333333333')
balladur = ShoeMaker.create!(name: 'Balladur', email: 'balladur@gmail.com', phone: '4444444444')
chirac = ShoeMaker.create!(name: 'Chirac', email: 'patrick@gmail.com', phone: '5555555555')
gayet = ShoeMaker.create!(name: 'Gayet', email: 'julie@gmail.com', phone: '6666666666')
aubry = ShoeMaker.create!(name: 'Aubry', email: 'martine@gmail.com', phone: '7777777777')
pasqua = ShoeMaker.create!(name: 'Pasqua', email: 'charles@gmail.com', phone: '8888888888')

adrien = User.create!(email: 'adrien@gmail.com', password: '123456')
yann = User.create!(email: 'yann@gmail.com', password: '123456')
mathieu = User.create!(email: 'mathieu@gmail.com', password: '123456')
olivier = User.create!(email: 'olivier@gmail.com', password: '123456')

frosty = Horse.create!(name: "Frosty", box: 1 , formula: 'one', user_id: adrien.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_01.jpg")
belle = Horse.create!(name: "Belle des Neiges", box: 2 , formula: 'one', user_id: yann.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_02.jpg")
bobby = Horse.create!(name: "Bobby", box: 3 , formula: 'one', user_id: mathieu.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_03.jpg")
sophie = Horse.create!(name: "Sophie", box: 4 , formula: 'two', user_id: olivier.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_04.jpg")
bobby = Horse.create!(name: "Bobby", box: 5 , formula: 'two', user_id: yann.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_05.jpg")
tony = Horse.create!(name: "Tony", box: 6 , formula: 'two', user_id: adrien.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_06.jpg")
tom = Horse.create!(name: "Tom", box: 7 , formula: 'three', user_id: mathieu.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_07.jpg")
capuccin = Horse.create!(name: "Capuccin", box: 8 , formula: 'three', user_id: olivier.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_09.jpg")
speedy = Horse.create!(name: "Speedy", box: 9 , formula: 'three', user_id: adrien.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_10.jpg")
gonzales = Horse.create!(name: "Gonzales", box: 10 , formula: 'four', user_id: yann.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_11.jpg")
raymonde = Horse.create!(name: "Raymonde", box: 11 , formula: 'four', user_id: mathieu.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_12.jpg")
antoinette = Horse.create!(name: "Antoinette", box: 12 , formula: 'four', user_id: olivier.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_13.jpg")
eric = Horse.create!(name: "Eric", box: 13 , formula: 'one', user_id: adrien.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_14.jpg")
rebelle = Horse.create!(name: "Rebelle", box: 14 , formula: 'one', user_id: yann.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_15.jpg")
halliday = Horse.create!(name: "Halliday", box: 15 , formula: 'one', user_id: mathieu.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_16.jpg")
madonna = Horse.create!(name: "Madonna", box: 16 , formula: 'two', user_id: olivier.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_17.jpg")
prince = Horse.create!(name: "Prince", box: 17 , formula: 'two', user_id: yann.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_18.jpg")
harry = Horse.create!(name: "Harry", box: 18 , formula: 'two', user_id: adrien.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_19.jpg")
jeremy = Horse.create!(name: "Jeremy", box: 19 , formula: 'three', user_id: mathieu.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_20.jpg")
tony = Horse.create!(name: "Tony", box: 20 , formula: 'three', user_id: olivier.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_21.jpg")
ronny = Horse.create!(name: "Ronny", box: 21 , formula: 'three', user_id: adrien.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_22.jpg")
boogy = Horse.create!(name: "Boogy", box: 22 , formula: 'four', user_id: mathieu.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_24.jpg")
rock = Horse.create!(name: "Rock", box: 23 , formula: 'four', user_id: olivier.id , remote_photo_url: "https://res.cloudinary.com/dk6vsgttl/image/upload/v1534867381/hudada_25.jpg")


#réservations de Bob
# Booking.create!(horse_id: frosty.id, user_id: yann.id, saut: true, promenade: true, dressage: false, days_booked: "lundi", starts_at: "2018-08-25", ends_at: "2018-10-25")
# Booking.create!(horse_id: belle.id, user_id: yann.id, saut: false, promenade: true, dressage: false, days_booked: "mardi", starts_at: "2018-10-30", ends_at: "2018-12-30")


p "C'est uploadé !"
p Activity.all
p FoodType.all
p Medecine.all
p Vetenary.all
p ShoeMaker.all
p Medecine.all
p Horse.all
p User.all
