class AddStatusToProjectVolunteer < ActiveRecord::Migration
  def change
    add_column :projects_volunteers, :status, :string, default: "Pending"
  end
end
