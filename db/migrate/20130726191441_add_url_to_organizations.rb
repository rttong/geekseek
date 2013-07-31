class AddUrlToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :url, :string
  end
end
