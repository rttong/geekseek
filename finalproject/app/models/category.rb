class Category < ActiveRecord::Base
has_and_belongs_to_many :projects
  attr_accessible :website_redesign, :website_creation, :branding, :database_creation, :graphic_design, :other
end
