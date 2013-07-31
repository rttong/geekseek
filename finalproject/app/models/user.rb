class User < ActiveRecord::Base
  validates :email, :password, :password_confirmation, presence: true

  validates_uniqueness_of :email

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :profile_type
  has_one :volunteer, dependent: :destroy
  has_one :organization, dependent: :destroy


  after_create :generate_volunteer_or_organization

  def generate_volunteer_or_organization
    if volunteer?
      self.create_volunteer
    else
      self.create_organization
    end
  end

  def volunteer_for? project
    self.volunteer.projects.include? project
  end

  def volunteer?
    self.profile_type == "volunteer"
  end

  def organization?
    self.profile_type == "organization"
  end

end
