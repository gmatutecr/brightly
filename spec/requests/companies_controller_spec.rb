require 'rails_helper'

RSpec.describe "companies#show", :type => :request do
    it "displays the company profile" do    
      company = create(:company)
      visit company_path(company.id)

      expect(page).to have_content(company.name)
      expect(page).to have_content(company.business_description)
    end
end