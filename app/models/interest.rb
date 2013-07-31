class Interest < ActiveRecord::Base

  belongs_to :volunteer
  belongs_to :project
  attr_accessible :status, :volunteer_id, :project_id, :message
  
end
