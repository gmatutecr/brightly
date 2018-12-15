require 'rails_helper'

RSpec.describe "companies#show", :type => :request do
    it "displays the company profile" do    
      company = create(:company)
      visit company_path(company.id)

      expect(page).to have_content(company.name)
      expect(page).to have_content(company.business_description)
      expect(page).to have_content("This company is also in these buildings")
      expect(page).to have_content("Edit")
      expect(page).to have_content("Cancel")
      expect(page).to have_content("Delete")
    end
end

RSpec.describe "company#new", :type => :request do
    it "creates a new company" do    
      
      visit companies_path

      click_on 'New company'

      fill_in 'Name', with: 'Company'
      fill_in 'Business description', with: 'Description'

      click_on 'Create Company'

      expect(page).to have_content("Company")
      expect(page).to have_content("Description")
    end
end

RSpec.describe "company#update", :type => :request do
    it "updates a company" do    
      company = create(:company)
      visit company_path(company.id)

      click_on 'Edit'

      fill_in 'Name', with: 'SomeBusiness'
      fill_in 'Business description', with: 'SomeDescription'

      click_on 'Update Company'

      expect(page).to have_content("SomeBusiness")
      expect(page).to have_content("SomeDescription")
    end
end

RSpec.describe "companies#index", :type => :request do
    it "displays the index" do   
     
      company = create(:company)
      visit companies_path

      expect(page).to have_content(company.name)
      expect(page).to have_content(company.business_description)
    end
end

RSpec.describe "companies#destroy", :type => :request do
    it "Destroy a record" do   
      company = create(:company)
      visit company_path(company.id)

      expect(page).to have_content(company.name)
      expect(page).to have_content(company.business_description)

      click_on 'Delete'
    end
end