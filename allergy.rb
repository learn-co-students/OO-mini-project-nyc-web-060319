class Allergy

attr_accessor :ingredient, :user

@@all = []

def initialize(ingredient, user)
  @ingredient = ingredient
  @@all << self
  @user = user
end

def self.all
  @@all
end

end
