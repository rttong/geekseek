class CreateSkillsVolunteers < ActiveRecord::Migration
   def create
    create_table :skills_volunteers do |t|
      t.references :skill
      t.references :volunteer
    end
  end
end
