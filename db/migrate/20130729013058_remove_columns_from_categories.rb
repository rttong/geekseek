class RemoveColumnsFromCategories < ActiveRecord::Migration
  def change
   remove_column :categories, :website_redesign
   remove_column :categories, :website_creation
   remove_column :categories, :branding
   remove_column :categories, :database_creation
   remove_column :categories, :graphic_design
   remove_column :categories, :other
   add_column :categories, :category_type, :string
  end
end
