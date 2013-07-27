class Project < ActiveRecord::Base
has_many :categories
has_many :volunteers
attr_accessible  :title, :summary, :target_date, :organizations
end
