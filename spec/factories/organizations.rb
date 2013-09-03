FactoryGirl.define do

  factory :organization do |f|
    f.org_name "Blue skies"
    f.location  "New York, NY"
    f.mission "Organization mission"
    f.description "Organization description"
    f.year_founded 1987
    f.size  77
    f.user
  end
end
