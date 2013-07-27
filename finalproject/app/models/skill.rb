class Skill < ActiveRecord::Base
  has_and_belongs_to_many :volunteers
  attr_accessible :web_designer, :web_developer, :technical_training, :graphic_design, :marketing, :other
end
