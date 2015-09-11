# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do

    author Faker::Name.name
    body Faker::Lorem.sentence
    post_id {rand(1..15)}
  end
end
