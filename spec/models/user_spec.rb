require 'spec_helper'

# describe User do
  # let(:user) { FactoryGirl.create(:user) }

describe User do
  before :each do
    @user = FactoryGirl.build(:user)
  end


    it "should not be valid without an email" do
      @user.email = nil
      @user.should_not be_valid
    end

    it "should be a valid with an email" do
      @user.should be_valid
    end

    it "should be an instance of user" do
      @user.should be_an_instance_of User
    end

    it "should not be valid without a password" do
      @user.password = nil
      @user.should_not be_valid
    end

    it "should not be valid with different password confirmation" do
      @user.password_confirmation = "notmatching"
      @user.should_not be_valid
    end

    it "#generate_volunteer_or_organization" do

    end
end
