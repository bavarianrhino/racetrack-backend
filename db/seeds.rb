# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



u1 = User.create(username: "Ryan", password: "$ALT")
u2 = User.create(username: "Ryan R", password: "$ALT")
u3 = User.create(username: "Ryan Riesenberger", password: "$ALT")

r1 = Racecar.create(name: "Red Car",
    up: "http://images.clipartpanda.com/car-top-view-clipart-red-racing-car-top-view-fe3a.png",
    down: "http://images.clipartpanda.com/car-top-view-clipart-red-racing-car-top-view-fe3a.png",
    left: "http://images.clipartpanda.com/car-top-view-clipart-red-racing-car-top-view-fe3a.png",
    right: "http://images.clipartpanda.com/car-top-view-clipart-red-racing-car-top-view-fe3a.png")
r1 = Racecar.create(name: "Black Car",
    up: "http://www.sclance.com/pngs/car-top-view-png/car_top_view_png_219321.png",
    down: "http://www.sclance.com/pngs/car-top-view-png/car_top_view_png_219321.png",
    left: "http://www.sclance.com/pngs/car-top-view-png/car_top_view_png_219321.png",
    right: "http://www.sclance.com/pngs/car-top-view-png/car_top_view_png_219321.png")
r1 = Racecar.create(name: "Blue Car",
    up: "https://cdn4.iconfinder.com/data/icons/race-cartoon/512/val42_2-128.png",
    down: "https://cdn4.iconfinder.com/data/icons/race-cartoon/512/val42_2-128.png",
    left: "https://cdn4.iconfinder.com/data/icons/race-cartoon/512/val42_2-128.png",
    right: "https://cdn4.iconfinder.com/data/icons/race-cartoon/512/val42_2-128.png")



s1 = Score.create( user_id: 1, racecar_id: 1, time: "24")
s2 = Score.create( user_id: 1, racecar_id: 1, time: "54")
s3 = Score.create( user_id: 1, racecar_id: 1, time: "32")
s4 = Score.create( user_id: 1, racecar_id: 1, time: "65")
s5 = Score.create( user_id: 1, racecar_id: 2, time: "34")
s6 = Score.create( user_id: 1, racecar_id: 2, time: "54")
s7 = Score.create( user_id: 1, racecar_id: 2, time: "12")
s8 = Score.create( user_id: 1, racecar_id: 3, time: "54")
s9 = Score.create( user_id: 1, racecar_id: 3, time: "234")
s10 = Score.create( user_id: 1, racecar_id: 3, time: "21")
s11 = Score.create( user_id: 2, racecar_id: 1, time: "54")
s12 = Score.create( user_id: 2, racecar_id: 1, time: "23")
s13 = Score.create( user_id: 2, racecar_id: 1, time: "73")
s14 = Score.create( user_id: 2, racecar_id: 1, time: "34")
s15 = Score.create( user_id: 2, racecar_id: 2, time: "23")
s16 = Score.create( user_id: 2, racecar_id: 2, time: "2")
s17 = Score.create( user_id: 2, racecar_id: 2, time: "32")
s18 = Score.create( user_id: 2, racecar_id: 3, time: "54")
s19 = Score.create( user_id: 2, racecar_id: 3, time: "5324")
s20 = Score.create( user_id: 2, racecar_id: 3, time: "23")
s21 = Score.create( user_id: 3, racecar_id: 1, time: "2e4")
s22 = Score.create( user_id: 3, racecar_id: 1, time: "54")
s23 = Score.create( user_id: 3, racecar_id: 1, time: "32")
s24 = Score.create( user_id: 3, racecar_id: 1, time: "625")
s25 = Score.create( user_id: 3, racecar_id: 2, time: "34")
s26 = Score.create( user_id: 3, racecar_id: 2, time: "542")
s27 = Score.create( user_id: 3, racecar_id: 2, time: "12")
s28 = Score.create( user_id: 3, racecar_id: 3, time: "543")
s29 = Score.create( user_id: 3, racecar_id: 3, time: "234")
s30 = Score.create( user_id: 3, racecar_id: 3, time: "21")