require 'faker'

FactoryGirl.define do
  
  factory :user do 
    email 'test@gmail.com'
    password "12345678"
    password_confirmation "12345678"
  end

  factory :v_user do 
    profile_type "volunteer"
  end

  factory :o_user do 
    profile_type "organization"
  end

end
