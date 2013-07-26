class AddCauseToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :cause, :string
  end
end
