require 'open-uri'
require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.create(name: 'mint leaves')

# URL = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredient_serialized = open(URL).read
# ingredient = JSON.parse(ingredient_serialized)

# # puts ingredient['drinks'].count
# ingredient['drinks'].each do |i|
#   i.each do |_k, v|
#     Ingredient.create(name: v)
#   end
# end


# url = 'https://cookieandkate.com/images/2017/12/best-moscow-mule-cocktail-recipe.jpg'
# strawberry = Cocktail.second
# strawberry.remote_photo_url = url
# strawberry.save

# mart = 'https://cookieandkate.com/images/2017/12/best-moscow-mule-cocktail-recipe.jpg'
# martini = Cocktail.third
# martini.remote_photo_url = mart
# martini.save

# bramb = 'https://cdn.liquor.com/wp-content/uploads/2016/09/16091151/bramble-1200x628-social.jpg'
# bramble = Cocktail.fourth
# bramble.remote_photo_url = bramb
# bramble.save
