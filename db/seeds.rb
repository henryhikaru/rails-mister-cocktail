# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

json = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
obj = JSON.parse(json)

Ingredient.destroy_all

obj['drinks'].each do |key|
	ingredient = Ingredient.new(
		name: key['strIngredient1']
		)
	ingredient.save
	puts "#{ingredient.name} created"
end