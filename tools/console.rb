require "date"
require_relative "../config/environment.rb"

u1 = User.new("Alex")
u2 = User.new("Evan")
u3 = User.new("Bob")
u4 = User.new("Sarah")

i1 = Ingredient.new("Peanut")
i2 = Ingredient.new("Raspberry")

a1 = Allergy.new(u1, i1)
a2 = Allergy.new(u2, i1)
a3 = Allergy.new(u3, i1)
a4 = Allergy.new(u3, i2)
a1 = Allergy.new(u1, i2)

r1 = Recipe.new("Soup")
r2 = Recipe.new("Salad")
r3 = Recipe.new("Bread")
r4 = Recipe.new("Fruit Salad")

r1.add_ingredients([i1, i2])

ri1 = RecipeIngredient.new(i1, r1)
ri2 = RecipeIngredient.new(i2, r4)
ri3 = RecipeIngredient.new(i2, r2)
ri4 = RecipeIngredient.new(i1, r2)

rc1 = RecipeCard.new(Date.new(2019, 5, 3), u1, 2, r1)
rc2 = RecipeCard.new(Date.new(2019, 7, 1), u1, 4, r2)
rc3 = RecipeCard.new(Date.new(2019, 8, 10), u2, 4, r2)

u1.add_recipe_card(r3, Date.new(2018, 12, 25), 3)
u1.add_recipe_card(r4, Date.new(2018, 10, 9), 6)

binding.pry
