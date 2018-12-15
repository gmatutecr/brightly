require 'rails_helper'

RSpec.describe "building#show", :type => :request do
    it "displays the building profile" do    
      building = create(:building)
      visit building_path(building.id)

      expect(page).to have_content(building.name)
      expect(page).to have_content(building.location)
    end
end

RSpec.describe "building#new", :type => :request do
    it "creates a new building" do    
      
      visit buildings_path

      click_on 'New Building'

      fill_in 'Name', with: 'Building'
      fill_in 'Location', with: 'Location'

      click_on 'Create Building'

      expect(page).to have_content("Building")
      expect(page).to have_content("Location")
    end
end

RSpec.describe "building#update", :type => :request do
    it "displays the building profile" do    
      building = create(:building)

      visit building_path(building.id)

      click_on 'Edit'

      fill_in 'Name', with: 'Building'
      fill_in 'Location', with: 'Location'

      click_on 'Update Building'

      expect(page).to have_content("Building")
      expect(page).to have_content("Location")
    end
end

RSpec.describe "building#index", :type => :request do
    it "displays the index" do   
     
      building = create(:building)
      visit buildings_path

      expect(page).to have_content(building.name)
      expect(page).to have_content(building.location)
    end
end

RSpec.describe "building#destroy", :type => :request do
    it "Destroy a record" do   
      building = create(:building)
      visit building_path(building.id)

      expect(page).to have_content(building.name)
      expect(page).to have_content(building.location)

      click_on 'Delete'
    end
end