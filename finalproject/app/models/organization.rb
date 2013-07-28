class Organization < ActiveRecord::Base
  attr_accessible :org_name, :location, :user_id, :cause, :mission, :description, :year_founded, :size, :url, :avatar

  belongs_to :user
  has_and_belongs_to_many :causes
  has_many :projects
  
  mount_uploader :avatar, AvatarUploader
end