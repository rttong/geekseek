class RemoveSkillsFromVolunteers < ActiveRecord::Migration
  def change
    remove_column :volunteers, :skills
  end
end
