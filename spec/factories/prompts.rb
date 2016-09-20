FactoryGirl.define do
  factory :prompt do
    sequence(:option_a) { |n| "Swallow #{n} bees"}
    option_b "steal a plane"
    votes_a 0
    votes_b 0
    author "August"
    description "Y'know, vote for one."
  end
end
