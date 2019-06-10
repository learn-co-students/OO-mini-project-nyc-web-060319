require_relative "User.rb"
require_relative "RecipeCard.rb"

class Recipe
    @@all = []

    attr_accessor :users, :ingredients

    def initialize()
        # if !@@all.include?{|recipe| recipe.users.include?(user)}

        # else

        # end
        @ingredients = []
        @@all << self
    end

    def add_ingredients(ingredients)
        @ingredients = @ingredients.concat(ingredients)

    end

    def self.most_popular
    end
    
end

