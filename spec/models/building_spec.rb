require 'rails_helper'

RSpec.describe Building, type: :model do

  describe "Validations" do
    it "Its valid with valid attributes" do
      building = Building.new(name: "test building", 
                            location: "test")
      expect(building).to be_valid
    end

    it "its invalid with nil name" do
      building = Building.new(name: nil, 
                            location: "test")
      expect(building).to be_invalid
    end

    it "its invalid with nil description_name" do
      building = Building.new(name: "test", 
                              location: "")
      expect(building).to be_invalid
    end

    it "its invalid with name length > 75" do
      building = Building.new(name: "test nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest name", 
      location: "location")
      expect(building).to be_invalid
    end
  end

  describe "Associations" do
    it { should have_and_belong_to_many(:companies) } 
  end
end
