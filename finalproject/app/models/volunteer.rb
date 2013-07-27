class Volunteer < ActiveRecord::Base
  # attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :userable_type, :userable_id

  belongs_to :user

  def full_name
    "#{first_name} #{last_name}"
  end
end
