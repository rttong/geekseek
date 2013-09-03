class Organization < ActiveRecord::Base
  validates :org_name, :location, :mission, :description, :year_founded, :size, presence: true

  attr_accessible :org_name, :location, :user_id, :cause, :mission, :description, :year_founded, :size, :url, :avatar, :cause_ids

  belongs_to :user
  has_and_belongs_to_many :causes
  has_many :volunteers, through: :projects
  has_many :projects

  # accepts_nested_attributes_for :causes

  mount_uploader :avatar, AvatarUploader

  scope :latest, ->(num=5) { order("id DESC").limit(num) }

end
