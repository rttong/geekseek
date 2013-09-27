
FactoryGirl.define, class: Interest do
  factory :interest do
    status  "Pending"
    message  "Message"
    association :project, factory: :project
    association :volunteer, factory: :volunteer
  end
end

