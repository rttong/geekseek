FactoryGirl.define, class: Interest do
  factory :interest do |f|
    f.status  "Pending"
    f.message  "Message"
    f.association :project, factory: :project
    f.association :volunteer, factory: :volunteer
  end
end
