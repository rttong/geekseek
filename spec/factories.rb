FactoryGirl.define do
  factory :user do
    email "john.doe@gmail.com"
    password "12345678"
    password_confirmation "12345678"
  end

  factory :volunteer do
    first_name "John"
    last_name "Doe"
    job_history "Google Senior Engineer 1990 - present"
    availability "4 hours a week"
    location "San Francisco, CA"
    portfolio_links "https://www.johndoe.com"
    linkedin_url { Faker::Internet.domain_name}
    user
  end

  factory :project do
    title "Project Title"
    summary "Project Summary"
    target_date "Mon, 29 Jul 2014"
    importance "Because it is"
    state "active"
    organization
  end

 factory :organization do
  org_name "Blue skies"
  location  "New York, NY"
  mission "Organization mission."
  description "Organization description"
  year_founded 1987
  size  77
  user
  end


end

