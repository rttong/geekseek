class Organization < ActiveRecord::Base
  # attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :userable_type, :userable_id
  # mount_uploader :avater, AvatarUploader
  has_and_belongs_to_many :causes
  belongs_to :user

end
