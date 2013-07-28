class CreateSkillsVolunteers < ActiveRecord::Migration
   def change
    create_table :skills_volunteers do |t|
      t.belongs_to :skill
      t.belongs_to :volunteer
    end
  end
end
