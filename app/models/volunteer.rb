class Volunteer < ActiveRecord::Base
  validates :first_name, :last_name, :job_history, :availability, :location, :portfolio_links, presence: true

  attr_accessible :first_name, :last_name, :skills, :job_history, :phone, :availability, :location, :portfolio_links, :user_id, :linkedin_url, :skill_ids, :skill
  has_and_belongs_to_many :skills
  has_many :projects, through: :interests
  has_many :interests

  has_many :pending_interests, class_name: "Interest", conditions: {status: "Pending"}
  has_many :pending_projects, through: :pending_interests, source: :project

  has_many :accepted_interests, class_name: "Interest", conditions: {status: "accepted"}
  has_many :accepted_projects, through: :accepted_interests, source: :project

  has_many :organizations, through: :projects

  belongs_to :user
  # accepts_nested_attributes_for :skills

  def projects_by_state(state)
    return pending_projects if state.blank?
    return accepted_projects if state == "accepted"
    return accepted_projects.completed if state == "completed"
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def for_project project
    self.projects << project
  end
end
