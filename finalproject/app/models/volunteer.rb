class Volunteer < ActiveRecord::Base
  validates :first_name, :last_name, :job_history, :availability, :location, :portfolio_links, presence: true

  attr_accessible :first_name, :last_name, :skills, :job_history, :phone, :availability, :location, :portfolio_links, :user_id, :linkedin_url, :skill_ids, :skill
  has_and_belongs_to_many :skills
  has_many :projects, through: :interests
  has_many :interests
  belongs_to :user
  accepts_nested_attributes_for :skills

  def full_name
    "#{first_name} #{last_name}"
  end

  def for_project project
    self.projects << pro
  end
end
