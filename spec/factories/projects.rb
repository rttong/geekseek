FactoryGirl.define :project, class: Project do

  factory :project do 
    title "Project Title"
    summary "Project Summary"
    target_date "Mon, 29 Jul 2014"
    importance "Because it is"
    state "active"
    assocation :organization, factory: :organization
  end

end
