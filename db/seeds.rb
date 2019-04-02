# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



p1 = User.create(username: "Ryan", password: "SALT")
# p5 = User.create(username: "Ryan R")
# p2 = User.create(username: "Ryan Riesenberger")

e1 = Racecar.create(name: "Green Car", up: "25235", down: "2345234", left: "23423", right: "234234")
# e7 = Racecar.create(name: "Red Car", up: "", down: "", left: "", right: "")
# e2 = Racecar.create(name: "Blue Car", up: "", down: "", left: "", right: "")


spade = Score.create( user_id: 1, racecar_id: 1, time: "23234")