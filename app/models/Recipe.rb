require_relative "User.rb"
require_relative "RecipeCard.rb"

class Recipe
    @@all = []

    attr_accessor :users, :ingredients, :name

    def initialize(user, name)
        found = @@all.find{|recipe| recipe.name == name}
        if found != nil
            found.users << user
        else
            @users = []
            @name = name
            @users << user
            @ingredients = []
            @@all << self    
        end
    end

    def add_ingredients(ingredients)
        @ingredients = @ingredients.concat(ingredients)

    end

    def self.most_popular
        found = @@all[0]
        @@all.each do |recipe|
            if recipe.users.length > found.users.length
                found = recipe
            end
        end
        binding.pry
        found
    end
   
    
    def self.all
        @@all
    end
end

