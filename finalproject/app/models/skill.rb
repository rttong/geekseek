class Skill < ActiveRecord::Base
  has_and_belongs_to_many :volunteers
  attr_accessible :skill_type
end
