require 'rails_helper'

RSpec.describe SponsoredPostsController, type: :controller do
  let(:my_topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:my_sp) { my_topic.sponsored_posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 25) }

  describe "GET #show" do
    it "returns http success" do
      get :show, topic_id: my_topic.id, id: my_sp.id
      expect(response).to have_http_status(:success)
    end
    
    it "renders the show view" do
      get :show, topic_id: my_topic.id, id: my_sp.id
      expect(response).to render_template :show
    end
    
    it "assigns my_sp to @sponsored_post" do
      get :show, topic_id: my_topic.id, id: my_sp.id
      expect(assigns(:sponsored_post)).to eq(my_sp)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new, topic_id: my_topic.id, id: my_sp.id
      expect(response).to have_http_status(:success)
    end
    
    
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
