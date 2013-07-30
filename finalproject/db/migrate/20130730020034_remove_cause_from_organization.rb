class RemoveCauseFromOrganization < ActiveRecord::Migration
  def change
  remove_column :organizations, :cause, :string
  end
end
