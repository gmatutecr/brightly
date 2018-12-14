require 'rails_helper'

RSpec.describe "people#show", :type => :request do
    it "displays the person profile" do   
     
      person = create(:person)
      visit person_path(person.id)

      expect(page).to have_content(person.first_name)
      expect(page).to have_content(person.last_name)
    end
end