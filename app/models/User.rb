class User

    attr_accessor :recipe, :recipe_card, :allergies

    @@all = []

    def initialize(recipe, recipe_card, allergies)
        @recipe = recipe
        @recipe_card = recipe_card
        @allergies = allergies
        @@all << self
    end

    def self.all
        @@all
    end

    def user_recipes
        recipe_card.select do |recipe_card|
            recipe_card.recipe == self
        end
    end
    def add_recipe_card (recipe_card, date, rating)
        RecipeCard.new(recipe_card, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select do |ingredient_instance|
            ingredient_instance.user == self    
        end
    end

    def every_recipe
        RecipeCard.all.select do |recipes_card|
            recipe_card.recipe
        end.uniq
    end

    def find_total_rating
        recipe = every_recipe.each do |recipe| 
            RecipeCard.all.each == recipe
        end
    end

    def top_3_recipes
        top_rating.max(3)
    end

    def find_most_recent_recipe
        self.user_recipes.select do |recipes|
            recipes.date
        end
    end

end