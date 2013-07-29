class Cause < ActiveRecord::Base
  has_and_belongs_to_many :organizations
	attr_accessible :adult_ed, :job_readiness, :special_needs, :animals, :childrens_ed, :environment, :health, :hunger, :seniors, :revitilization, :veterans, :homeless, :lgbt, :other
end
