class CreateCategoriesProjects < ActiveRecord::Migration
   def change
    create_table :categories_projects do |t|
      t.belongs_to :category
      t.belongs_to :project
    end
  end
end
