class FixOrganizationForeignKey < ActiveRecord::Migration
  def change
    rename_column :projects, :organizations_id, :organization_id
    add_index :projects, :organization_id
  end
end
