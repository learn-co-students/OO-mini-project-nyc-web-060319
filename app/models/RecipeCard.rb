class RecipeCard

    attr_accessor :rating, :recipe, :user
    attr_reader :date

    @@all = []

    def initialize(user,date,rating,recipe)
        @user = user
        @recipe = recipe
        @rating = rating
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end
end