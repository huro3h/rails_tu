FactoryBot.define do
  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    # password Faker::Internet.password
    password "password"
    password_confirmation "password"
    password_digest User.digest('password')

    trait :nil_name do
      name nil
    end

    trait :nil_email do
      email nil
    end
  end
end
