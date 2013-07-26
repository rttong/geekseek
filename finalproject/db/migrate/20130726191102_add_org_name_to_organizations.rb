class AddOrgNameToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :org_name, :string
  end
end
