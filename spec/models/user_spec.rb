require 'spec_helper'

  describe User do

    let(:email) { "johndoe.@gmail.com" }
    let(:password) { "password" }
    let(:user) { User.create(email: username, password: password, password_confirmation: password }

    it "should require a email to create a user" do
      expect{ User.create!(email: "", password: password) }.to raise_error
    end

    it "should require a password to create a user" do
      expect{ User.create!(email: email, password: "") }.to raise_error
    end

    it "should ensure proper validation of email and password" do
      user.should be_valid
    end

    it "should create a user object when data is valid" do
      User.find(user.id).should eq user
    end

    it "should not be valid if email is duplicate" do
      user
      User.create(email: email, password: password).should be_invalid
    end
  end
