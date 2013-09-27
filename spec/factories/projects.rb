FactoryGirl.define do

  factory :project do 
    title "Project Title"
    summary "Project Summary"
    target_date "Mon, 29 Jul 2014"
    importance "Because it is"
    state "active"
    organization
  end

end
