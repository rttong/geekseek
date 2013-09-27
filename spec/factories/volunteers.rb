require 'faker'

FactoryGirl.define do
  factory :volunteer do |f|
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.job_history { Faker::Company.bs }
    f.availability "4 hours a week"
    f.location {Faker::Address.city}
    f.portfolio_links {Faker::Iternet.url}
    f.linkedin_url {Faker::Iternet.url}
    f.association :user, factory: :user
  end
end
