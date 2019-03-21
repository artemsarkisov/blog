#spec/factories/articles.rb

# FactoryBot.define do

  # post factory with a `belongs_to` association for the user
  # factory :article do
  #   title { "Through the Looking Glass" }
  #   user
  # end

  # THE line below will create a mess if you uncomment it

  # user factory without associated articles
  # factory :user do
  #   name { "John Doe" }
  #
  #   # user_with_posts will create post data after the user has been created
  #   factory :user_with_posts do
  #     # articles_count is declared as a transient attribute and available in
  #     # attributes on the factory, as well as the callback via the evaluator
  #     transient do
  #       articles_count { 5 }
  #     end
  #
  #     # the after(:create) yields two values; the user instance itself and the
  #     # evaluator, which stores all values from the factory, including transient
  #     # attributes; `create_list`'s second argument is the number of records
  #     # to create and we make sure the user is associated properly to the post
  #     after(:create) do |user, evaluator|
  #       create_list(:article, evaluator.articles_count, user: user)
  #     end
  #   end
  # end
# end

# FactoryBot.define do
#   factory :article do
#     title { "An amazing article title"}
#
#     trait :published do
#       status :published
#     end
#
#     trait :unpublished do
#       status :unpublished
#     end
#
#     # trait :in_the_future do
#     #   published_at { 2.days.from_now }
#     # end
#
#     # trait :in_the_past do
#     #   published_at { 2.days.ago }
#     # end
#   end
# end
