class Project < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :volunteers
  belongs_to :organization
  attr_accessible  :title, :summary, :target_date, :organizations, :importance, :category_ids

  scope :active, -> { where(state: "active") }
  scope :completed, -> { where(state: "completed") }

  def self.search(params={})
    params ||= {}
    relation = self.unscoped
    relation = self.joins(organization: :causes).where("causes.id IN (?)", params[:cause_ids]) if params[:cause_ids].try(:any?)
    relation = relation.joins(:categories).where("categories.id IN (?)", params[:category_ids]) if params[:category_ids].try(:any?)
    # relation.where("title ILIKE('%?%') OR summary ILIKE('%?%')", params[:text],params[:text]) if params[:text]
    relation
  end

  def self.find_causes
    # self.joins(organization: :causes).where("causes.id IN (?)", params[:cause_ids])
  end

end
