class AddSizeToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :size, :integer
  end
end
