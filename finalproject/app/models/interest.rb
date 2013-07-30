class Interest < ActiveRecord::Base
  belongs_to :volunteers
  belongs_to :projects
  attr_accessible :status, :volunteer_id, :project_id, :message
end
