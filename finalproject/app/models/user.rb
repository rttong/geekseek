class User < ActiveRecord::Base
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :profile_type
  has_one :volunteer
  has_one :organization

  after_create :generate_volunteer_or_organization

  def generate_volunteer_or_organization
    if volunteer?
      self.create_volunteer
    else
      self.create_organization
    end
  end

  def volunteer?
    self.profile_type == "volunteer"
  end

  def organization?
    self.profile_type == "organization"
  end

end
