require "date"

class User
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergies
    Allergy.all.select do |allergy|
      allergy.user == self
    end
  end

  def allergens
    allergies.map do |allergy|
      allergy.ingredient
    end
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, self, rating, recipe)
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def recipes
    recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def sorted_recipe_cards
    recipe_cards.sort_by do |recipe_card|
      -recipe_card.rating
    end
  end

  def top_three_recipes
    top3 = sorted_recipe_cards[0..2]
    top3.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def sort_recipe_cards_by_date
    sorted_by_date = recipe_cards.sort_by do |recipe_card|
      recipe_card.date
    end
    sorted_by_date
  end

  def most_recent_recipe
    sort_recipe_cards_by_date[-1].recipe
  end
end
