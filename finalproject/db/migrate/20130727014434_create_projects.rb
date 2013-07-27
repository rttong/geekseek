class CreateProjects < ActiveRecord::Migration
   def change
    create_table :projects do |t|
      t.string :title
      t.string :summary
      t.date :target_date
      t.belongs_to :organizations
    end
  end
end
