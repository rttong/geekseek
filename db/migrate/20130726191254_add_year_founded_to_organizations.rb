class AddYearFoundedToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :year_founded, :integer
  end
end
