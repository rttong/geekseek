class ChangeProjectsVolunteersToInterest < ActiveRecord::Migration
  def change
    rename_table :projects_volunteers, :interests
  end
end
