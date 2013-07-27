class CreateSkillsVolunteers < ActiveRecord::Migration
   def create
    create_table :skills_volunteers do |t|
      t.references :skills
      t.references :volunteers
    end
  end
end
