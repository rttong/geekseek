FactoryGirl.define do
  factory :category do |f|
    f.category_type "Environment"
    f.association :project, factory: :project 
    #has and belongs to - wondering if htis is enough?
  end
end
