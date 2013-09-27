require 'faker'

FactoryGirl.define do

  sequence :email do |n|
       "#{n}@gmail.com" 
  end

 factory :user do
    # email "laura@gmail.com"
    
    email
    password "Pass1848"
    password_confirmation "Pass1848"

    factory :organization_user do
      profile_type "organization"
      factory :organization, class: Organization do
        org_name "Blue skies"
        location  "New York, NY"
        mission "Organization mission"
        description "Organization description"
        year_founded 1987
        size  77
      end
    end


    factory :volunteer_user do
      profile_type "volunteer"
      factory :volunteer, class: Volunteer do
        first_name { Faker::Name.first_name }
        last_name { Faker::Name.last_name }
        job_history { Faker::Company.bs }
        availability "4 hours a week"
        location {Faker::Address.city}
        portfolio_links {Faker::Internet.url}
        linkedin_url {Faker::Internet.url}
      end
    end
  end

end