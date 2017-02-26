require 'rails_helper'

RSpec.describe Favorite, type: :model do
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_sentence) }
  let(:user) { User.create!(name: "dhammer", email: "dhammer@bloccit.com", password: "password") }
<<<<<<< HEAD
  let(:post) { topic.post.create!(title: "RandomData.random_sentence", body: "RandomData.random_sentence", user: user) }
  let(:favorite) { Favorite.create!(post: post, user: user ) }
=======
  let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, user: user) }
  let(:favorite) { Favorite.create!(post: post, user: user) }
>>>>>>> checkpoint-31-2
  
  it { is_expected.to belong_to(:post) }
  it { is_expected.to belong_to(:user) }
end
