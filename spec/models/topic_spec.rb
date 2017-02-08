require 'rails_helper'

RSpec.describe Topic, type: :model do
  let(:name) { RandomData.random_sentence }
  let(:description) { RandomData.random_paragraph }
  let(:public) { true }
  let(:topic) { Topic.create!(name: name, description: description) }
  
    describe "attributes" do
        it "has name, descriptiong, and topic attributes"
          expect(topic).to have_attributes(name: name, description: description, public: public)
        end
        
        it "it public by default" do
            expect(topic).to be(true)
        end
    end