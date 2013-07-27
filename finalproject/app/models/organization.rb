class Organization < ActiveRecord::Base
  # attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :userable_type, :userable_id
  has_many :causes
  belongs_to :user

end
