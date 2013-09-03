require 'spec_helper'

describe User do
  let(:user) { Factory(:user) }

  it "has a valid factory" do
    user.should be_valid
  end
end
