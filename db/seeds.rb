# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users ---------------------------------

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

offer1 = Offer.create!(title: "Bicycle", body: "I'm selling a standard 1987 Raleigh Granada Reynolds 531 touring bike perfect for Audax season. This bike is in excellent condition with Deep Metallic Blue paintwork and Silver headset.", user: mike, value: 145, image: "https://i.ebayimg.com/00/s/NzY4WDEwMjQ=/z/LNkAAOSw3utY71gq/$_86.JPG" )

Offer.create!(title: "Bicycle", body: "I'm selling a cheap 1987 Raleigh Granada Reynolds 531 touring bike perfect for Audax season. This bike is in excellent condition with Deep Metallic Blue paintwork and Silver headset.", user: mike, value: 90, image: "https://i.ebayimg.com/00/s/NzY4WDEwMjQ=/z/LNkAAOSw3utY71gq/$_86.JPG" )

Offer.create!(title: "Bicycle", body: "I'm selling an expensive beautiful 1987 Raleigh Granada Reynolds 531 touring bike perfect for Audax season. This bike is in excellent condition with Deep Metallic Blue paintwork and Silver headset.", user: mike, value: 200, image: "https://i.ebayimg.com/00/s/NzY4WDEwMjQ=/z/LNkAAOSw3utY71gq/$_86.JPG" )

Offer.create!(title: "bicycle", body: "I'm selling a lowercase 1987 Raleigh Granada Reynolds 531 touring bike perfect for Audax season. This bike is in excellent condition with Deep Metallic Blue paintwork and Silver headset.", user: mike, value: 190, image: "https://i.ebayimg.com/00/s/NzY4WDEwMjQ=/z/LNkAAOSw3utY71gq/$_86.JPG" )

Offer.create!(title: "Blender that looks like a bicycle", body: "A blender that looks like a BIKE, I wonder if this will show up in any search results.", user: mike, value: 100, image: "https://i.ebayimg.com/00/s/NzY4WDEwMjQ=/z/LNkAAOSw3utY71gq/$_86.JPG" )

Message.create!(
  subject: "I saw you wanted a bicycle",
  body: "I really like those 1987 blue touring bikes is it really £145",
  sender_id: mike.id,
  reciever_id: ajay.id,
  advert_id: advert1.id,
  offer_id: offer1.id
)

Message.create!(
  subject: "you're selling a bike that I want",
  body: "hey, I really like those 1987 blue touring bikes is it really £145 is it still for sale?",
  sender_id: ajay.id,
  reciever_id: mike.id,
  advert_id: advert1.id,
  offer_id: offer1.id
)

Message.create!(
  subject: "re: you're selling a bike that I want",
  body: "Yeah it's totally for sale, let me send you the paypal stuff",
  sender_id: mike.id,
  reciever_id: ajay.id,
  advert_id: advert1.id,
  offer_id: offer1.id
)
