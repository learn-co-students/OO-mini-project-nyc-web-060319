require_relative '../config/environment.rb'

user1 = User.new("brownies","brownie1","milk")

allergy1 = Allergy.new("ingrid","milk")
allergy2 = Allergy.new("ingrid1","egg")
allergy3 = Allergy.new("ingrid2","wheat")
allergy4 = Allergy.new("bill1","egg")
allergy5 = Allergy.new("bill2","egg")
allergy6 = Allergy.new("bill3","milk")
allergy7 = Allergy.new("both","nuts")


ingredient1 = ("milk")

recipe1 = Recipe.new(ingredient1,user1,allergy1)

binding.pry

puts "This is a test"