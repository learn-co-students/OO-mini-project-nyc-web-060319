class Ingredient

  attr_accessor :name

  @@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def self.most_common_allergen
  counter = 0
  highest = 0
  answer = "test"
  self.all.each do |foods|
    User.all.each do |people|
      people.allergens.each do |allergies|
        if foods == allergies.ingredient
          counter += 1
        end
      end
    end
    if counter > highest
      highest = counter
      counter = 0
      answer = foods
    end
  end
  return answer
end





end
