class CreateCausesOrganizations < ActiveRecord::Migration
  def create
    create_table :causes_organizations do |t|
      t.references :cause
      t.references :organization
    end
  end
end
