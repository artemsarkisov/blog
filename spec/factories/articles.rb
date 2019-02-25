# spec/factories/articles.rb
FactoryBot.define do
  factory :article do
    title "An amazing article title"

    # trait :published do
    #   status :published
    # end

    # trait :unpublished do
    #   status :unpublished
    # end

    # trait :in_the_future do
    #   published_at { 2.days.from_now }
    # end

    # trait :in_the_past do
    #   published_at { 2.days.ago }
    # end
  end
end