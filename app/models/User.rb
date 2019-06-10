require_relative "Recipe.rb"

class User
    @@all = []

    attr_reader :allergens

    def initialize()
        @allergens = []
        @@all << self
    end
    

    def declare_allergy(allergen)
        found = Allergy.all.find{|this_allergen| this_allergen.allergen == allergen}
        if found != nil
            #sbinding.pry
            found.users << self
        else
            @allergens << Allergy.new(allergen)
        end
        @allergens.uniq!
    end

    def self.all
        @@all
    end
end