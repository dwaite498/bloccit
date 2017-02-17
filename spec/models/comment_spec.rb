require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:comment) {Comment.create!(body: "comment body", post: post) }
  let(:user) { User.create!(name: "Doom Hammer", email: "dhammer@bloccit.com", password: "password") }
  let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, user: user) }
  
  describe "attributes" do
      it "Has a body attribute" do
          expect(comment).to have_attributes(body: "comment body")
      end
  end
end
