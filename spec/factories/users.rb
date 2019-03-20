# spec/factories/users.rb

FactoryBot.define do
  factory :user do
    username { "Mark" }
    email { "#{username}@example.com" }
    password { "password" }
    articles
  end

  factory :random_user, class: User do
    username { Faker::Name.name }
    email { Faker::Internet.safe_email }
    admin { true }
    password { "password" }
  end

  trait :accepted do
    recipient factory: :user
    accepted_at { Time.now }
  end
end
