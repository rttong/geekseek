class CreateCategoriesProjects < ActiveRecord::Migration
   def create
    create_table :categories_projects do |t|
      t.references :categories
      t.references :projects
    end
  end
end
