require 'rails_helper'

RSpec.describe "people#show", :type => :request do
    it "displays the person profile" do   
     
      person = create(:person)
      visit person_path(person.id)

      expect(page).to have_content(person.first_name)
      expect(page).to have_content(person.last_name)
    end
end

RSpec.describe "person#new", :type => :request do
    it "creates a new person" do    
      
      visit people_path

      click_on 'New person'

      fill_in 'First name', with: 'SomeName'
      fill_in 'Last name', with: 'SomeLastName'
      fill_in 'Email', with: 'SomeEmail@email.com'
      fill_in 'Job', with: 'SomeJob'
      fill_in 'Bio', with: 'SomeBio'
      fill_in 'Birthdate', with: '12/12/1986'

      click_on 'Create Person'

      expect(page).to have_content("Company must exist")
    end
end

RSpec.describe "people#update", :type => :request do
    it "updates a person" do    
      person = create(:person)
      visit person_path(person.id)

      click_on 'Edit'

      fill_in 'First name', with: 'SomeName'

      click_on 'Update Person'

      expect(page).to have_content("SomeName")
    end
end

RSpec.describe "people#index", :type => :request do
    it "displays the index" do   
     
      person = create(:person)
      visit people_path(person.id)

      expect(page).to have_content(person.first_name)
      expect(page).to have_content(person.last_name)
    end
end

RSpec.describe "companies#destroy", :type => :request do
    it "Destroy a record" do   
      person = create(:person)
      visit person_path(person.id)

      expect(page).to have_content(person.first_name)
      expect(page).to have_content(person.last_name)

      click_on 'Delete'
    end
end