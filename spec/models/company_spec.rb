require 'rails_helper'

RSpec.describe Company, type: :model do

  describe "Validations" do
    it "Its valid with valid attributes" do
      company = Company.new(name: "test company", 
                            business_description: "test")
      expect(company).to be_valid
    end

    it "its invalid with nil name" do
      company = Company.new(name: nil, 
      business_description: "test")
      expect(company).to be_invalid
    end

    it "its invalid with nil description_name" do
      company = Company.new(name: "test name", 
      business_description: nil)
      expect(company).to be_invalid
    end

    it "its invalid with name length > 75" do
      company = Company.new(name: "test nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest nametest name", 
      business_description: "test")
      expect(company).to be_invalid
    end

    it "its invalid with business_description length > 254" do
      company = Company.new(name: "test nametest nametest nametest nametest nametest nametest
                                  nametest nametest nametest nametest nametest nametest nametest 
                                  nametest nametest nametest nametest nametest nametest nametest
                                  nametest nametest nametest nametest nametest nametest nametest nametest
                                  nametest nametest nametest nametest nametest name", 
      business_description: "test")
      expect(company).to be_invalid
    end
  end

  describe "Associations" do
    it { should have_many(:people) } 
    it { should have_and_belong_to_many(:buildings) } 
  end

end