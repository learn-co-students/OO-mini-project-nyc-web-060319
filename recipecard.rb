class RecipeCard

  attr_accessor :recipe, :date, :rating, :user

    @@all = []

  def initialize(recipe, date, rating, user)
    @@all << self
    @recipe = recipe
    @date = date
    @rating = rating
    @user = user
  end



 def self.all
   @@all
 end

end
