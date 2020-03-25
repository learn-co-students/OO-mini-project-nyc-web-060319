require_relative "User.rb"


class Ingredient
    @@all = []
    attr_accessor :ingredient_name

    def initialize(name)
        @ingredient_name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        #binding.pry
        sorted_allergy = Allergy.all.sort_by{|allergy| allergy.users.length}
        sorted_allergy.last
    end
end
