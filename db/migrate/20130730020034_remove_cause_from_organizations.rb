class RemoveCauseFromOrganizations < ActiveRecord::Migration
  def change
  remove_column :organizations, :cause
  end
end
