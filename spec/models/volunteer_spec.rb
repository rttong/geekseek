require 'spec_helper'

describe Volunteer do
  it {should validate_presence_of(:first_name)}
  it {should validate_presence_of(:last_name)}
  it {should validate_presence_of(:job_history)}
  it {should validate_presence_of(:availability)}
  it {should validate_presence_of(:location)}
  it {should validate_presence_of(:portfolio_links)}
end
