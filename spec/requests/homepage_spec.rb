require 'rails_helper'

RSpec.describe "home page", :type => :request do
    it "displays the welcome message" do    
      visit "/"
      expect(page).to have_content("Welcome to Brightly")
    end
end

RSpec.describe "home page", :type => :request do
  it "displays the welcome message" do    
    visit "/companies"
    click_on "Home"

    expect(page).to have_content("Welcome to Brightly")
  end
end

RSpec.describe "home menu companies", :type => :request do
  it "goes to companies" do    
    visit "/"
    click_on "Companies"
    expect(page).to have_content("New company")
  end
end

RSpec.describe "home menu people", :type => :request do
  it "goes to people" do    
    visit "/"
    click_on "People"
    expect(page).to have_content("New person")
  end
end

RSpec.describe "home menu buildings", :type => :request do
  it "goes to buildings" do    
    visit "/"
    click_on "Buildings"
    expect(page).to have_content("New Building")
  end
end