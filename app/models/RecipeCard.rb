require_relative "User.rb"
require_relative "Recipe.rb"


class RecipeCard
    @@all = []
    attr_accessor :date, :user, :rating, :recipe

    def initialize(date, rating, user, recipe)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe
        @@all << self
    end

end