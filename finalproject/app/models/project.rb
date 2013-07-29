class Project < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :volunteers
  belongs_to :organization
  attr_accessible  :title, :summary, :target_date, :organizations, :importance, :category_ids

  scope :active, -> { where(state: "active") }
  scope :completed, -> { where(state: "completed") }

  def self.search(params={})
    relation = self.joins(organization: :causes).where("causes.id IN (?)", params[:cause_ids])
    relation.where("title ILIKE('%?%')", params[:text]) if params[:text]
  end
end
