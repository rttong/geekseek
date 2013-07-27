class Organization < ActiveRecord::Base
  attr_accessible :org_name, :location, :user_id, :cause, :mission, :description, :year_founded, :size, :url, :avatar
 mount_uploader :avater, AvatarUploader
 has_and_belongs_to_many :causes
 belongs_to :user

end
