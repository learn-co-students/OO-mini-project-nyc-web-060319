require_relative '../config/environment.rb'
require_relative "../app/models/Ingredient.rb"

ingredients = []
recipes = []


10.times do |index|
    ingredients[index] = Ingredient.new(index.to_s)
end

10.times do |index|
    recipes[index] = Recipe.new()
    recipes[index].add_ingredients(ingredients)
end

users = []
10.times do |index|
    user = User.new()
    user.declare_allergy("peanuts")
    user.add_recipe_card(recipes[index], "", index)
    users << user
end

user = User.new()
user.declare_allergy("banana")




binding.pry


