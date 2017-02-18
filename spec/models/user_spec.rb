require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(name: "Doom Hammer", email: "DHammer@bloccit.com", password: "password") }
  
  it { is_expected.to have_many(:posts) }
    
  #test for presence of and valid length of name
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_least(1) }
  
  #test for presence of and validity of email
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email) }
  it { is_expected.to validate_length_of(:email).is_at_least(3) }
  it { is_expected.to allow_value("user@bloccit.com").for(:email) }
  
  #test for presence of and validity of password
  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to have_secure_password }
  it { is_expected.to validate_length_of(:password).is_at_least(6) }
  
  describe "attributes" do
    it "should have expected attributes" do
      expect(user).to have_attributes(name: "Doom Hammer", email: "dhammer@bloccit.com", password: "password")
    end
  end
  
  describe "invalid user" do
   let(:user_with_invalid_name) { User.new(name: "", email: "user@bloccit.com") }
   let(:user_with_invalid_email) { User.new(name: "Bloccit User", email: "") }
   
   it "should be an invalid user due to blank name" do
    expect(user_with_invalid_name).to_not be_valid
   end
   
   it "should be an unvalid user due to blank email" do
    expect(user_with_invalid_email).to_not be_valid
   end
  end
  
end
