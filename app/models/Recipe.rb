class Recipe

    attr_accessor :ingredients , :allergies, :user

    @@all = []

    def initialize(ingredients,user,allergies)
        @ingredients = ingredients
        @user = user
        @allergies = allergies
        @@all << self
    end

    def self.all
        @@all
    end

    def add_ingredient(ingredient)
        RecipeImgredient.new(ingredient,self)
    end
end