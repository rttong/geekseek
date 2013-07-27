class CreateCausesOrganizations < ActiveRecord::Migration
  def create
    create_table :causes_organizations do |t|
      t.references :causes
      t.references :organizations
    end
  end
end
