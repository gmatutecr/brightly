FactoryBot.define do
  
    factory :company do
      name {"My Company"}
      business_description {"software development"}
    end

    factory :building do
        name {"Building"}
        location {"Monaco"}
      end
  end