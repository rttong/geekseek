class Organization < ActiveRecord::Base
  # attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :userable_type, :userable_id
  mount_uploader :avater, AvatarUploader
  belongs_to :user

end