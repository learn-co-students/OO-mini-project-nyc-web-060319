require_relative "../app/models/Allergy.rb"

# Yay! my first Rspec!

RSpec.describe Allergy do
    describe "#all" do
        let(:allergy){Allergy.new("cheese")}
        it "can be initialized" do
            expect(allergy).to be_an_instance_of(Allergy)
        end

        it "Has an #all method" do
            expect(Allergy.all).to be_an_instance_of(Array)
        end

        it "#all includes cheese" do
            expect(Allergy.all[0].allergen).to eq("cheese")
        end
    end
end