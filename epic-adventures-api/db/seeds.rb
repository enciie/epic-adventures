# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username:"GroovyChedda", email:"groovychedda@mail.com", password:"password", password_confirmation:"password")

trip_a = user.trips.build(
  name: "Winter Wonderland",
  description:"January 2019 first trip of the year! Luzerne, Interlaken, Zermattt, and Zurich. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  location:"Switzlerand",
  likes: 10,
  img_url: "https://i.imgur.com/jPlp1o4.jpg"
)
trip_a.save
trip_a.comments.build(content: "Can't wait!", user_id: "2").save

trip_e = user.trips.build(
  name: "Swiss Alps in January 2019",
  description: "Snowboarding adventure. Winter Wonderland. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  location: "Zermatt, Switzerland",
  likes: 5,
  img_url: "https://i.imgur.com/vp6sgu6.jpg",
)
trip_e.save
trip_e.comments.build(content: "Wow, sounds amazing!", user_id: "2").save

user_b = User.create(username:"BravePerson", email:"braveperson@mail.com", password:"password", password_confirmation:"password")
trip_b = user_b.trips.build(
  name: "Kiwi Adventure",
  description:"Backpacking trip to South New Zealand",
  location:"Queenstown, NZ",
  likes: 2,
  img_url: "https://i.imgur.com/SjNlE7v.jpg"
)
trip_b.save
trip_b.comments.build(content: "Breathtaking views and endless adventures", user_id: "1").save

trip_f = user_b.trips.build(
  name: "Chasing Sunsets",
  description: "colorful sunsets and sunrises. Crashing waves and salty sea air!",
  location: "somewhere by the coast",
  likes: 4,
  img_url: "https://i.imgur.com/qpBmuA4.jpg",
)
trip_f.save

user_c = User.create(username:"test", email:"test@mail.com", password:"password", password_confirmation:"password")
trip_c = user_c.trips.build(
  name: "Alstrom Point",
  description:"car camping with a spectacular sunrise and sunset view!!! Absolutely breathtaking!",
  location:"Kane County, Utah",
  likes: 8,
  img_url: "https://i.imgur.com/SzJYLIh.jpg" )
trip_c.save

trip_d = user_c.trips.build(
  name: "California Coastline",
  description:"Amazing beach views and great car camping spot. Avoid on stormy days!",
  location:"Big Sur, CA",
  likes: 5,
  img_url: "https://i.imgur.com/sDYQhZk.jpg" )
trip_d.save
