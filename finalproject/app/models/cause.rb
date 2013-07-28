class Cause < ActiveRecord::Base
  has_and_belongs_to_many :organizations
attr_accessible :cause_type
end
