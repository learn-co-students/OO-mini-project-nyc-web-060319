class Recipe

attr_accessor  :name


@@all = []

def self.all
  @@all
end

def initialize(name)
  @name = name
  @@all << self
end

def ingredients
  array = []
  RecipeIngredient.all.each do |ri|
    array << ri.ingredient
  end
  return array
end

def add_ingredients(array)
  array.each do |foods|
    RecipeIngredient.new(foods, self)
  end
end

def allergens
  newArray = []
  array = self.ingredients
  array.each do |food|
    Allergy.all.each do |allergies|
      if food == allergies.ingredient
        newArray << food
      end
    end
  end
  return newArray.uniq
end

def self.most_popular
  counter = 0
  highest = 0
  answer = ""
  self.all.each do |recipes|
    RecipeCard.all.each do |cards|
      if cards.recipe == recipes
        counter += 1
      end
    end
    if counter > highest
      highest = counter
      counter = 0
      answer = recipes
    end
  end
  return answer
end

def users
  array = []
  RecipeCard.all.each do |cards|
    if self == cards.recipe
      array << cards.user
    end
  end
  return array
end



end
