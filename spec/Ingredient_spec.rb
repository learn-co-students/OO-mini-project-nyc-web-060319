require_relative "../app/models/Ingredient.rb"

RSpec.describe Ingredient do
    describe "#initialize" do
        let(:ingredient){Ingredient.new("cheese")}
            it "can be initialized" do
                expect(ingredient).to be_an_instance_of(Ingredient)
            end
            it "Has a name" do
                expect(ingredient.ingredient_name).to eq("cheese")
            end
            
    end

end