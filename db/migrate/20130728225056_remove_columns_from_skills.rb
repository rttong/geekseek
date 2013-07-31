class RemoveColumnsFromSkills < ActiveRecord::Migration
  def change
    remove_column :skills, :web_designer
    remove_column :skills, :web_developer
    remove_column :skills, :technical_training
    remove_column :skills, :graphic_design
    remove_column :skills, :marketing
    remove_column :skills, :other
    add_column :skills, :skill_type, :string
  end
end
