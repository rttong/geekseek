class Volunteer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :skills, :job_history, :phone, :availability, :location, :portfolio_links, :user_id, :linkedin_url
  has_many :skills
  has_many :projects
  belongs_to :user
  accepts_nested_attributes_for :skills

  def full_name
    "#{first_name} #{last_name}"
  end
end
