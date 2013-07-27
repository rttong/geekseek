class Volunteer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :skills, :job_history, :phone, :availability, :location, :portfolio_links, :user_id
  has_many :skills
  has_many :projects
  belongs_to :user

  def full_name
    "#{first_name} #{last_name}"
  end
end
