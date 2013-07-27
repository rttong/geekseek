class CreateProjectsVolunteers < ActiveRecord::Migration
   def create
    create_table :projects_volunteers do |t|
      t.belongs_to :project
      t.belongs_to :volunteer
    end
  end
end
