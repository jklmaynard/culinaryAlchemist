# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([
  { email: "Bob" },
  { email: "Sandra" },
  { email: "Brent" },
  { email: "Naomi Campbell" },
  { email: "Tony" },
])


Recipe.create([
  { name: "The French Baguette" },
  { name: "Cheeze soup" },
  { name: "Brownies" },
  { name: "Nachos" },
  { name: "Taco" },
])
