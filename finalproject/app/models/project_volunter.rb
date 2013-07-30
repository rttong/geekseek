class ProjectVolunteer < ActiveRecord::Base
belongs_to :volunteers
belongs_to :projects
attr_accessible :status
end
