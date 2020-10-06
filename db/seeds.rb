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
User.create(email: "john@example.com", password: "password", password_confirmation: "password", first_name: "john", last_name: "example", house_id: 0, points: 0)

Home.create(user_id: 1, address: "2345 One Drive Lane Pine Hills, FL", home_type: "house")

Room.create(name: "kitchen", house_id: 1, floor: 1, room_type: "kitchen", privacy: "shared")

Chore.create(title: "clean fridage", desc: "pull out all the drawers", hours_till_repeat: 3, last_completed: 2020 - 25 - 10, points_gain: 20, points_price: 100, room_id: 1)
