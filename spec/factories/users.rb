FactoryBot.define do
  factory :user do
    name Faker::Name.name
    email Faker::Internet.email

    trait :nil_name do
      name nil
    end

    trait :nil_email do
      email nil
    end
  end
end
