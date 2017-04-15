# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


emily = User.create!(username: "emily", email: "e@ge", phoneNumber: "078510123123", address: "133 big house, london road, london, N145T ")

ajay = User.create!(username: "ajay", email: "aj@aj", phoneNumber: "078510124124", address: "134 big house, london road, london, N145T")

mike = User.create!(username: "mike", email: "m@m", phoneNumber: "078510125125", address: "135 big house, london road, london, N145T")

Advert.create!(title: "Bicycle", body: "I'm looking for a mens racing bike, maybe in blue.", user: ajay, valueMin: 100.00, valueMax: 150.00)

Advert.create!(title: "Blender", body: "I need a new blender, top of the range", user: emily, valueMin: 25.00, valueMax: 50.00)


Offer.create!(title: "Bicycle", body: "I'm selling a beautiful 1987 Raleigh Granada Reynolds 531 touring bike perfect for Audax season. This bike is in excellent condition with Deep Metallic Blue paintwork and Silver headset.", user: mike, value: 145, image: "https://i.ebayimg.com/00/s/NzY4WDEwMjQ=/z/LNkAAOSw3utY71gq/$_86.JPG" )
