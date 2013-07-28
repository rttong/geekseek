class Project < ActiveRecord::Base
  has_many :categories
  has_many :volunteers
  belongs_to :organization
  attr_accessible  :title, :summary, :target_date, :organizations, :importance

  scope :active, -> { where(state: "active") }
  scope :completed, -> { where(state: "completed") }
end
