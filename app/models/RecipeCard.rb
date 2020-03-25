
class RecipeCard
    @@all = []
    attr_accessor :date, :user, :rating, :recipe

    def initialize(date, rating, user, recipe_instance)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe_instance
        #@title = title
        @@all << self
    end

    def self.all
        @@all
    end

end