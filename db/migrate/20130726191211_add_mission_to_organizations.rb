class AddMissionToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :mission, :string
  end
end
