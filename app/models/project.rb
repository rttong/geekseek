class Project < ActiveRecord::Base
  validates :title, :summary, :target_date, :importance, presence: true

  has_and_belongs_to_many :categories
  has_many :volunteers, through: :interests
  has_many :interests
  belongs_to :organization

  attr_accessible  :title, :summary, :target_date, :organizations, :importance, :category_ids, :state, :organization_id

  scope :active, -> { where(state: "active") }
  scope :completed, -> { where(state: "completed") }

  def self.search(params={})
    params ||= {}
    relation = self.unscoped
    relation = self.joins(organization: :causes).where("causes.id IN (?)", params[:cause_ids]) if params[:cause_ids]
    relation = relation.joins(:categories).where("categories.id IN (?)", params[:category_ids]) if params[:category_ids]
    # relation.where("title ILIKE('%?%') OR summary ILIKE('%?%')", params[:text],params[:text]) if params[:text]
    relation
  end

  def interest_for volunteer
    self.interests.where(:volunteer_id => volunteer.id).first
  end

end
