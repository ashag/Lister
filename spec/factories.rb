FactoryGirl.define do
  factory :user do
    password "Gogo1234"
    password_confirmation "Gogo1234"
    sequence :username do |n| 
      "User #{n}" 
    end
    
    sequence :email do |n| 
      "#{n}@example.com"
    end

    factory :list do 
      @list1 = Factory(:list)

    end
  end


end