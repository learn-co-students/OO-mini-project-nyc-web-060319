class User

  attr_accessor :name

@@all = []

def initialize(name)
  @@all << self
  @name = name
end

def self.all
  @@all
end

def declare_allergy(ingredient)
  Allergy.new(ingredient, self)
end

def allergens
  array = []
  Allergy.all.each do |food|
    if food.user == self
      array << food.ingredient
    end
  end
  return array
end

def add_recipe_card(recipe, date, rating)
  RecipeCard.new(recipe, date, rating, self)
end

def recipes
  array = []
  RecipeCard.all.each do |card|
    if card.user == self
      array << card.recipe
    end
  end
  return array
end

def getcards
  array = []
    RecipeCard.all.each do |card|
      if card.user == self
        array << card
      end
    end
    return array
end

def top_three_recipes
  array = self.getcards
    array = array.sort_by{ |card| card.rating }
    array = array.reverse[0..2]
    array.map do |cards|
      cards.recipe
    end
end

def most_recent_recipe
  latestMonth = 0
  latestDay = 0
  answer = "test"
  array = self.getcards
  array.each do |cards|
    theDate = cards.date
    month = theDate[0..theDate.index("/") - 1].to_i
    day = theDate[theDate.index("/") + 1..(theDate.length-1)].to_i
    if month > latestMonth
        latestMonth = month
        latestDay = day
        answer = cards.recipe
    elsif month == latestMonth
        if day > latestDay
          latestMonth = month
          latestDay = day
          answer = cards.recipe
        end
      end
    end
  return answer
end

# def safe_recpies
#   allergies = self.allergens
#   array = self.getcards
#   answer = []
#   answer = array.delete_if do |cards|
#     allergies.each do |alg|
#       cards.recipe.ingredients.each do |ig|
#        # puts alg.inspect
#        # puts ig.inspect
#        # puts alg == ig
#        alg == ig
#      end
#    end
#   end
#   puts answer.inspect
# end




end
