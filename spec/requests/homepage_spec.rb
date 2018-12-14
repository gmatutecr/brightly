require 'rails_helper'

RSpec.describe "home page", :type => :request do
    it "displays the welcome message" do    
      visit "/"
      expect(page).to have_content("Welcome to Brightly")
    end
end