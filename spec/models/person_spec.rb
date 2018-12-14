require 'rails_helper'

RSpec.describe Person, type: :model do
  describe "Validations" do
    it "Its valid with valid attributes" do
      company = Company.new(name: "test company",
                            business_description: "description")

      person = Person.new(first_name: "test name", 
                          last_name: "test",
                          email: "email@email.com",
                          gender: 0,
                          job: "job",
                          bio: "bio",
                          birthdate: "12/12/1986",
                          company: company)
      expect(person).to be_valid
    end

    it "Its invalid with nil first_name" do
      company = Company.new(name: "test company",
                            business_description: "description")

      person = Person.new(first_name: nil, 
                          last_name: "test",
                          email: "email@email.com",
                          gender: 0,
                          job: "job",
                          bio: "bio",
                          birthdate: "12/12/1986",
                          company: company)
      expect(person).to be_invalid
    end

    it "Its invalid with nil last_name" do
      company = Company.new(name: "test company",
                            business_description: "description")

      person = Person.new(first_name: "name", 
                          last_name: nil,
                          email: "email@email.com",
                          gender: 0,
                          job: "job",
                          bio: "bio",
                          birthdate: "12/12/1986",
                          company: company)
      expect(person).to be_invalid
    end

    it "Its invalid with nil email" do
      company = Company.new(name: "test company",
                            business_description: "description")

      person = Person.new(first_name: "name", 
                          last_name: "lastname",
                          email: nil,
                          gender: 0,
                          job: "job",
                          bio: "bio",
                          birthdate: "12/12/1986",
                          company: company)
      expect(person).to be_invalid
    end

    it "Its invalid with nil gender" do
      company = Company.new(name: "test company",
                            business_description: "description")

      person = Person.new(first_name: "name", 
                          last_name: "lastname",
                          email: "email@example.com",
                          gender: nil,
                          job: "job",
                          bio: "bio",
                          birthdate: "12/12/1986",
                          company: company)
      expect(person).to be_invalid
    end

    it "Its invalid with job lenght > 75" do
      company = Company.new(name: "test company",
                            business_description: "description")

      person = Person.new(first_name: "name", 
                          last_name: "lastname",
                          email: "email@example.com",
                          gender: 0,
                          job: "jobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjob
                               jobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjob
                               jobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjobjob",
                          bio: "bio",
                          birthdate: "12/12/1986",
                          company: company)
      expect(person).to be_invalid
    end

    it "Its invalid with birthdate in the future" do
      company = Company.new(name: "test company",
                            business_description: "description")

      person = Person.new(first_name: "name", 
                          last_name: "lastname",
                          email: "email@example.com",
                          gender: 0,
                          job: "job",
                          bio: "bio",
                          birthdate: "12/12/2999",
                          company: company)
      expect(person).to be_invalid
    end

    it "Its invalid with wrong email" do
      company = Company.new(name: "test company",
                            business_description: "description")

      person = Person.new(first_name: "name", 
                          last_name: "lastname",
                          email: "emailexample.com",
                          gender: 0,
                          job: "job",
                          bio: "bio",
                          birthdate: "12/12/2000",
                          company: company)
      expect(person).to be_invalid
    end

    it "Its invalid with long email > 254" do
      company = Company.new(name: "test company",
                            business_description: "description")

      person = Person.new(first_name: "name", 
                          last_name: "lastname",
                          email: "emaile@exampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexample
                          exampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexample
                          exampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexample
                          exampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexampleexample
                          exampleexampleexampleexampleexampleexample.com",
                          gender: 0,
                          job: "job",
                          bio: "bio",
                          birthdate: "12/12/2000",
                          company: company)
      expect(person).to be_invalid
    end

    it "Its invalid with wrong gender" do
      company = Company.new(name: "test company",
                            business_description: "description")

      person = Person.new(first_name: "name", 
                          last_name: "lastname",
                          email: "emaile@xample.com",
                          gender: 5,
                          job: "job",
                          bio: "bio",
                          birthdate: "12/12/2000",
                          company: company)
      expect(person).to be_invalid
    end

  end

  describe "Associations" do
    it { should belong_to(:company) } 
  end
end
