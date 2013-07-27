class CreateCategoriesProjects < ActiveRecord::Migration
   def create
    create_table :categories_projects do |t|
      t.references :category
      t.references :project
    end
  end
end
