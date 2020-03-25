class Ingredient

    attr_accessor :ingredient

    @@all = []

    def initialize(ingredient)
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end

    def self.allergy_count
        count = Hash.new(0)
        Allergy.all.group_by {|allergy_instance| allergy_instance.ingredient}
        Allergy.all.each {|allergy_instance| count[allergy_instance.ingredient] += 1}
        #counts = Hash.new(0)
        #most_common_allergy.each { |allergy| counts[allergy] += 1 }
        count
    end

    def self.most_common_allergy
        allergy_count.max_by {|key,value| value}
    end

    def largest_hash_key
        hash.max_by{|k,v| v}
    end
end
