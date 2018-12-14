require 'rails_helper'

RSpec.describe "building#show", :type => :request do
    it "displays the building profile" do    
      building = create(:building)
      visit building_path(building.id)

      expect(page).to have_content(building.name)
      expect(page).to have_content(building.location)
    end
end