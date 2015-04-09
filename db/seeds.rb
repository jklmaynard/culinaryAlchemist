# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



recipes = Recipe.create([{ name: "Spaghetti", pairings: "fruity merlot", description: "boiled noodles in tomato based sauce with cheese", preparation: "boil noodles til al dente, pour sauce out of jar into sacepan, heat sauce til hot, put noodles on plate, pour sauce on noodles, shake cheese on top."}, { name: "pb&j", pairings: "koolaid", description: "gross", preparation: "smash peanut butter on a slice of bread, cover in jelly, cover with more bread."}])
