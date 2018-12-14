module PeopleHelper
  def display_gender(gender)
    case gender
      when 0
        "Not known"
      when 1
        "Male"
      when 2
        "Female"
      when 9
        "not applicable"
    end
  end  
end
