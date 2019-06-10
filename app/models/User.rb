require_relative "RecipeCard.rb"
require_relative "User.rb"
require "date"

class User
    @@all = []

    attr_reader :allergens
    attr_accessor :recipe_cards

    def initialize()
        @allergens = []
        @recipe_cards = []
        @@all << self
    end
    

    def declare_allergy(allergen)
        found = Allergy.all.find{|this_allergen| this_allergen.allergen == allergen}
        if found != nil
            #sbinding.pry
            found.users << self
        else
            @allergens << Allergy.new(allergen)
        end
        @allergens.uniq!
    end

    def self.all
        @@all
    end

    def add_recipe_card(recipe, date, rating)
        new_recipe = RecipeCard.new(date, rating, self, recipe)
        @recipe_cards << new_recipe
    end

    def recipes
        @recipe_cards.map{|card| card.recipe}
        binding.pry
    end
end