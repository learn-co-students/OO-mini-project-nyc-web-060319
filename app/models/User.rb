require_relative "RecipeCard.rb"
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

    def add_recipe_card(recipe_instance, date, rating)
        new_recipe = RecipeCard.new(date, rating, self, recipe_instance)
        @recipe_cards << new_recipe
    end

    def recipes
        @recipe_cards.map{|card| card.recipe}
        binding.pry
    end

    def most_recent_recipe
        @recipe_cards.last.recipe
    end

    def top_three_recipes
        binding.pry
        best_rated = @recipe_cards.sort_by{|recipe| recipe.rating}
        binding.pry
        best_rated[-3..-1]
    end
end