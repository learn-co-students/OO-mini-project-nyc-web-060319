require_relative "../app/models/Allergy.rb"

# Yay! my first Rspec!

RSpec.describe Allergy do
    describe "#all" do
        let(:allergy){Allergy.new}
        it "can be initialized" do
            expect(allergy).to_be_an_instance_of(Allergy)
        end

        it "Has an #all method" do
            expect(allergy.all).to_be_an_instance_of.(Array)
        end
    end
end