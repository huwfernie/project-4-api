# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users ---------------------------------
[User, Advert, Offer].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{model.table_name} RESTART IDENTITY CASCADE")
end

emily = User.create!(username: "emily", email: "e@e", phoneNumber: "078510123123", address: "133 big house, london road, london, N145T", password: "p", password_confirmation: "p")

ajay = User.create!(username: "ajay", email: "a@a", phoneNumber: "078510124124", address: "134 big house, london road, london, N145T", password: "p", password_confirmation: "p")

mike = User.create!(username: "mike", email: "m@m", phoneNumber: "078510125125", address: "135 big house, london road, london, N145T", password: "p", password_confirmation: "p")

will = User.create!(username: "will", email: "w@w", phoneNumber: "078510125125", address: "136 big house, london road, london, N145T", password: "p", password_confirmation: "p")

# Adverts --- things that people want ---------------------------

advert1 = Advert.create!(title: "Bicycle", body: "I'm looking for a mens racing bike, maybe in blue.", user: ajay, valueMin: 100.00, valueMax: 150.00)

Advert.create!(title: "Bicycle", body: "I'm looking for a mens racing bike, maybe in blue, but super cheap", user: emily, valueMin: 75.00, valueMax: 90.00)

Advert.create!(title: "Blender", body: "I NEED A BLENDER!!!!!!.", user: mike, valueMin: 1, valueMax: 15)

Advert.create!(title: "bicycle", body: "I'm looking for one of those lower case bikes that used to be all the rage.", user: will, valueMin: 100.00, valueMax: 150.00)

Advert.create!(title: "Blender", body: "I need a new blender, top of the range", user: emily, valueMin: 25.00, valueMax: 50.00)

# Offers -- things for sale ------------------------

offer1 = Offer.create!(
  title: "Bicycle",
  body: "I'm selling a beautiful 1987 Raleigh Granada Reynolds 531 touring bike perfect for Audax season. This bike is in excellent condition with Deep Metallic Blue paintwork and Silver headset.",
  user: will,
  value: 5,
  image: File.open(File.join(Rails.root, "db/images/bicycle.JPG"))
  )

Offer.create!(
  title: "Vintage Enid Blyton Books - 26 in total",
  body: "Vintage Enid Blyton Books - 26 in all. Swanpool area. Please contact me if you require more info.",
  user: emily,
  value: 15,
  # image: "http://www.gioiosa.it/fileadmin/images/Active/Mountainbike/Mountainbike01.jpg" )
  image: File.open(File.join(Rails.root, "db/images/enidBlyton.jpg"))
  )

Offer.create!(
  title: "VW T25 Trident Autosleeper White 1989 F Registration 1915cc Petrol",
  body: "VW T25 Trident Autosleeper White 1989 F Registration. 114253 Miles. This model is the 1915cc water-cooled petrol engine and 4 speed manual gearbox. This version also has the square headlights. MOT and taxed.The van is in good condition for its age, but has some small areas of rust, in the usual places for a van of this type and age. Approximately £750 alone spent on gearbox in 2015, at a professional gearbox centre. Lots of original paperwork, old MOT's and bills collected over the years. Awning, fiamma 4 bike rack, blackout blinds and porta potti included in sale. New leisure battery recently fitted.The van is located in Falmouth, Cornwall.
£5995 ono. Please call 07570604123",
  user: ajay,
  value: 5995,
  image: File.open(File.join(Rails.root, "db/images/vw_camper.JPG"))
  )

Offer.create!(
  title: "Men's Kookaburra cricket pads",
  body: "Men's KAHUNA 400 Kookaburra cricket pads.
  In a lovely condition, nice and clean.",
  user: mike,
  value: 5,
  image: File.open(File.join(Rails.root, "db/images/cricket_pads.JPG"))
  )

Offer.create!(
  title: "Coffee Table, Falmouth, Need Gone ASAP",
  body: "Small Cream Vintage-style table. Extra storage area underneath. Picture is not include. £15.",
  user: will,
  value: 15,
  image: File.open(File.join(Rails.root, "db/images/coffee_table.JPG"))
  )

Offer.create!(
  title: "Gretsch honeydipper resonator",
  body: "Gretsch resonator round neck with Fishman factory fitted pickup.

Very good condition. No issues.

Falmouth Cornwall.",
  user: will,
  value: 475,
  image: File.open(File.join(Rails.root, "db/images/guitar.JPG"))
  )

Offer.create!(
  title: "Raleigh 531c Luxe 1987 classic road bike, men, 57cm, shimano 600 custom Reynolds",
  body: "Raleigh 531c Luxe from 1987, with genuine Japanese sub-assemblies – Shimano 600 group. The frame is made of Reynolds 531c tubes, because of which it is very lightweight and stiff. It also features a cast bottom bracket shell made by Cinelli and Gipiemme dropouts.

  The 531c Luxe was a second performance bicycle in the Raleigh hierarchy just after the 653 Race model (see catalogue page).

  The classic steel frame has been freshly renovated, including sandblasting and powder-coating. The bike fashions genuine SR Sakae alloy stem, handlebars and a seat-post set-up. The bars are finished with thick leather and cork ends which go perfectly with the leather finished Italian saddle.",
  user: will,
  value: 749,
  image: File.open(File.join(Rails.root, "db/images/bicycle2.JPG"))
  )

Offer.create!(
  title: "kitchen aid blender in cream",
  body: "# KITCHEN AID BLENDER IN CREAM MODEL NUMBER 5KSB52BAC4

  No BOX or Manual...  Slight damage to blender Rubber Clutch but still works great.
  Replacement rubber Clutch is less than £10 on ebay...

  **10 SPEED COMBINATIONS ULTRA POWER BLENDER**
  Used and in very good NEW CONDITION
  FROM A NON-SMOKING HOME
  NON-REFUNDABLE

  Collect+ (2day Delivery) including packaging to a UK address.",
  user: ajay,
  value: 15,
  image: File.open(File.join(Rails.root, "db/images/blender.JPG"))
  )

Offer.create!(
  title: "Ocean frenzy kayak",
  body: "Ocean frenzy kayak, great fun boat for all the family, can hold large adults but manageable for kids as well. Comes with ocean seat and a paddle. Has usual marks from landing on the beach but is ready to go for the summer",
  user: ajay,
  value: 180,
  image: File.open(File.join(Rails.root, "db/images/kayak.JPG"))
  )

#
# Message.create!(
#   subject: "I saw you wanted a bicycle",
#   body: "I really like those 1987 blue touring bikes is it really £145",
#   sender_id: mike.id,
#   reciever_id: ajay.id,
#   advert_id: advert1.id,
#   offer_id: offer1.id
# )
#
# Message.create!(
#   subject: "you're selling a bike that I want",
#   body: "hey, I really like those 1987 blue touring bikes is it really £145 is it still for sale?",
#   sender_id: ajay.id,
#   reciever_id: mike.id,
#   advert_id: advert1.id,
#   offer_id: offer1.id
# )
#
# Message.create!(
#   subject: "re: you're selling a bike that I want",
#   body: "Yeah it's totally for sale, let me send you the paypal stuff",
#   sender_id: mike.id,
#   reciever_id: ajay.id,
#   advert_id: advert1.id,
#   offer_id: offer1.id
# )
