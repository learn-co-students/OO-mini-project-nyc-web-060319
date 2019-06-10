require_relative "Recipe.rb"

class RecipeCard
    @@all = []
    attr_accessor :date, :user, :rating, :recipe

    def initialize(date, rating, user, recipe)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe
        #@title = title
        @@all << self
    end

    def self.all
        @@all
    end

end