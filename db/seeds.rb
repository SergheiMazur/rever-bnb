# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email, password)



Game.create(
  name: "Battlefield 4",
  rating: 5,
  description: "The most terrific game there is. It's just the best. Fortnite first.",
  user_id: 1
   )

Game.create(
  name: "Skyrim",
  rating: 4,
  description: "It's amazinggggg. The graphic are just terrific. One of the best.",
  user_id: 2,
  )

Game.create(
  name: "Grand Theft Auto V"
  rating: 4,
  description: "Who doesn't like killing people, do some drugs and especially robing some banks withouh living the concequences",
  user_id: 3,
  )

Game.create(
  name: "NHL 2K18",
  rating: 3,
  description: "The same as of 2K17 amd all of the previous ones",
  user_id: 4,
  )

Game.create(
  name: "Super Mario",
  rating: 4,
  description: "The only thing that I know is that Super sounds American and Mario sounds Italian.",
  user_id: 5,
  )

Game.create(
  name: "Titanfall",
  rating: 5,
  description: "Badass robots with amazing gameplay. I would like to have huge robots like that to troll people."
  user_id: 5,
  )
