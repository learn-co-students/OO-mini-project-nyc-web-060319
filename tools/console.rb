#require_relative '../config/environment.rb'
require_relative'../ingredient.rb'
require_relative'../user.rb'
require_relative'../allergy.rb'
require_relative'../recipe.rb'
require_relative'../recipeingredient.rb'
require_relative'../recipecard.rb'


require 'pry'

# apple = Ingredient.new("apple")
# orange = Ingredient.new("orange")
# flour = Ingredient.new("flour")
# sugar = Ingredient.new("sugar")
# milk = Ingredient.new("milk")
# cc = Ingredient.new("chocolate chips")
# pie = Recipe.new("Pie")
# pie.add_ingredients([apple, orange])
# cake = Recipe.new("Cake")
# cake.add_ingredients([sugar, flour])
# kate = User.new("Kate")
# kate.add_recipe_card(cake, "6/11", 5)
# pancakes = Recipe.new("Pancakes")
# pancakes.add_ingredients([milk, cc])
# waffles = Recipe.new("waffles")
# waffles.add_ingredients([milk, cc])
# john = User.new("John")
# john.add_recipe_card(pie, "1/1", 2)
# john.add_recipe_card(cake, "12/26", 4)
# john.add_recipe_card(pancakes, "7/22", 3)
# john.add_recipe_card(waffles, "2/12", 5)
#
# puts john.most_recent_recipe.inspect




#binding.pry

#most_common_allergen test

# john = User.new
# james = User.new
# owen = User.new
# mike = User.new
#
# john.declare_allergy(apple)
# john.declare_allergy(orange)
# james.declare_allergy(apple)
# james.declare_allergy(orange)
# owen.declare_allergy(orange)
#puts Ingredient.most_common_allergen.inspect

#allergens tests
cc = Ingredient.new("chocolate chips")
 milk = Ingredient.new("milk")
apple = Ingredient.new("apple")
orange = Ingredient.new("orange")
flour = Ingredient.new("flour")
sugar = Ingredient.new("sugar")
pancakes = Recipe.new("Pancakes")
pancakes.add_ingredients([milk, cc])
waffles = Recipe.new("waffles")
waffles.add_ingredients([milk, cc])
pie = Recipe.new("Pie")
pie.add_ingredients([apple, orange])
cake = Recipe.new("Cake")
cake.add_ingredients([sugar, flour])
john = User.new("John")
john.declare_allergy(apple)
james = User.new("James")
james.declare_allergy(orange)
james.declare_allergy(apple)
james.add_recipe_card(pie, "1/1", 2)
 james.add_recipe_card(cake, "12/26", 4)
 james.add_recipe_card(pancakes, "7/22", 3)
 james.add_recipe_card(waffles, "2/12", 5)

james.safe_recpies
