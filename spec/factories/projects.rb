FactoryGirl.define do
  factory :project do |f|
    f.title "Project Title"
    f.summary "Project Summary"
    f.target_date "Mon, 29 Jul 2014"
    f.importance "Because it is"
    f.state "active"
    f.organization
  end
end
