FactoryBot.define do
  
    factory :company do
      name {"My Company"}
      business_description {"software development"}
    end

    factory :building do
      name {"Building"}
      location {"Monaco"}
    end

    factory :person do
      first_name {"person"}
      last_name {"lastname"}
      email {"email@example.com"}
      job {"jon"}
      bio {"bio"}
      birthdate {"12/12/1986"}
      gender {0}
      association :company, factory: :company
    end

  end