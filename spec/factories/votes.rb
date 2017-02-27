FactoryGirl.define do
  factory :vote do
    value 1
    post
    user
  end
end



# Vote.create!(value: 1, post: post, user: user)