class Project < ActiveRecord::Base
has_many :categories
attr_accessible  :title, :summary, :target_date, :organizations
end
