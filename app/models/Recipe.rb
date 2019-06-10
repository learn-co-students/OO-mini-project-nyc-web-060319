class Recipe
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def users
    recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

  def ingredients
    recipe_ingredients.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  def add_ingredient(ingredient)
    RecipeIngredient.new(ingredient, self)
  end

  def add_ingredients(ingredient_array)
    ingredient_array.each do |ingredient|
      add_ingredient(ingredient)
    end
  end

  def self.recipe_card_count
    recipe_card_count = {}
    RecipeCard.all.each do |recipe_card|
      if recipe_card_count[recipe_card.recipe] == nil
        recipe_card_count[recipe_card.recipe] = 1
      else
        recipe_card_count[recipe_card.recipe] += 1
      end
    end
    recipe_card_count
  end

  def self.most_popular
    recipe_card_count.key(recipe_card_count.values.max)
  end
end
