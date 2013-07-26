class Volunteer < ActiveRecord::Base
  # attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :userable_type, :userable_id

  has_one :user, as: :userable 

end
