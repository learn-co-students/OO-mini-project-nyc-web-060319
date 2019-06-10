require_relative "User.rb"

class Allergy
    @@all = []

    attr_accessor :allergen, :users

    def initialize(allergen)
        @users = []
        @allergen = allergen
        @@all << self
    end

    def self.all
        @@all
    end

end