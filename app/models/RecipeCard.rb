class RecipeCard
  @@all = []

  attr_reader :user, :recipe, :date
  attr_accessor :rating

  def initialize(date, user, rating, recipe)
    @date = date
    @user = user
    @rating = rating
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end
end
