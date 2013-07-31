class AddLinkedinToVolunteers < ActiveRecord::Migration
  def change
    add_column :volunteers, :linkedin_url, :string
  end
end
