class Ingredient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.allergy_count
    allergy_count = {}
    Allergy.all.each do |allergy|
      if allergy_count[allergy.ingredient] == nil
        allergy_count[allergy.ingredient] = 1
      else
        allergy_count[allergy.ingredient] += 1
      end
    end
    allergy_count
  end

  def self.most_common_allergen
    allergy_count.key(allergy_count.values.max)
  end
end
