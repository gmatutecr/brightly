require 'rails_helper'

RSpec.describe "people#show", :type => :request do
    it "displays the person profile" do   
     
      person = create(:person)
      visit person_path(person.id)

      expect(page).to have_content(person.first_name)
      expect(page).to have_content(person.last_name)
      expect(page).to have_content(person.email)
      expect(page).to have_content(person.bio)
      expect(page).to have_content(person.job)
      expect(page).to have_content(person.gender)
      expect(page).to have_content(person.company.name)
      expect(page).to have_content("Edit")
      expect(page).to have_content("Cancel")
      expect(page).to have_content("Delete")
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

      fill_in 'First name', with: 'SomeNameUpdated'
      fill_in 'Last name', with: 'SomeLastNameUpdated'
      fill_in 'Job', with: 'SomeJobUpdated'
      fill_in 'Bio', with: 'SomeBioUpdated'
      fill_in 'Email', with: 'SomeEmailUpdated@example.com'

      click_on 'Update Person'

      expect(page).to have_content("SomeNameUpdated")
      expect(page).to have_content("SomeLastNameUpdated")
      expect(page).to have_content("SomeJobUpdated")
      expect(page).to have_content("SomeBioUpdated")
      expect(page).to have_content("SomeEmailUpdated@example.com")
      
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