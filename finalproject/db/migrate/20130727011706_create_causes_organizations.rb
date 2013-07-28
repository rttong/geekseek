class CreateCausesOrganizations < ActiveRecord::Migration
  def change
    create_table :causes_organizations do |t|
      t.belongs_to :cause
      t.belongs_to :organization
    end
  end
end
