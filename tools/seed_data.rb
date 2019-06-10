require_relative '../config/environment.rb'
require_relative "../app/models/Ingredient.rb"

ingredients = []
recipes = []


10.times do |index|
    ingredients[index] = Ingredient.new(index.to_s)
end

10.times do |index|
end

SAMPLE_ALLERGIES = ["peanuts", "almonds", "milk", "corn", "eggs"]

users = []
10.times do |index|
    user = User.new()
    recipes[index] = Recipe.new(user,index.to_s)
    recipes[index].add_ingredients([ingredients[index % 2], ingredients[index+1 % 3]])
    user.declare_allergy(SAMPLE_ALLERGIES.sample)
    user.add_recipe_card(recipes[index % 3], "", index)
    users << user
end

users[9].add_recipe_card(recipes[3], "", 1)
users[9].add_recipe_card(recipes[4], "", 3)
users[9].add_recipe_card(recipes[5], "", 5)

user = User.new()
user.declare_allergy("banana")




binding.pry


