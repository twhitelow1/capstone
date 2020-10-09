# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "todd@example.com", password: "password", password_confirmation: "password", first_name: "todd", last_name: "example", house_id: 1, points: 0)
User.create(email: "kiya@example.com", password: "password", password_confirmation: "password", first_name: "kiya", last_name: "example", house_id: 1, points: 0)
User.create(email: "jason@example.com", password: "password", password_confirmation: "password", first_name: "jason", last_name: "example", house_id: 1, points: 0)
User.create(email: "john@example.com", password: "password", password_confirmation: "password", first_name: "john", last_name: "example", house_id: 2, points: 0)

Home.create(user_id: 1, number: 2345, street: "First Drive Lane", addr_unit: "56", addr_city: "Pine Hills", addr_state: "FL", addr_zip: 34420, home_type: "house")
Home.create(user_id: 4, number: 678, street: "Second Drive Lane", addr_unit: "A5", addr_city: "Bollywood Hills", addr_state: "CO", addr_zip: 85547, home_type: "apartment")

Room.create(name: "kitchen", house_id: 1, floor: 1, room_type: "kitchen", privacy: "shared")
Room.create(name: "bathroom", house_id: 1, floor: 1, room_type: "full bathroom", privacy: "shared")
Room.create(name: "bathroom", house_id: 1, floor: 2, room_type: "full bathroom", privacy: "shared")
Room.create(name: "main room", house_id: 1, floor: 1, room_type: "living room", privacy: "shared")
Room.create(name: "Todd & Kiya's Room", house_id: 1, floor: -1, room_type: "kitchen", privacy: "private")
Room.create(name: "Jason's Room", house_id: 1, floor: -1, room_type: "kitchen", privacy: "private")

Chore.create(title: "clean fridge", desc: "pull out all the drawers", time_till_repeat: 720, last_completed: 1.day.ago, points_gain: 20, points_price: 100, room_id: 1)
Chore.create(title: "mop floors", desc: "mop around the toilet", time_till_repeat: 48, last_completed: 1.day.ago, points_gain: 20, points_price: 100, room_id: 1)
Chore.create(title: "take out trash", desc: "dont forget to put it in the right place", time_till_repeat: 24, last_completed: 1.day.ago, points_gain: 20, points_price: 100, room_id: 1)
