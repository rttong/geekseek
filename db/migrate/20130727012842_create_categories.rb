class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :website_redesign
      t.string :website_creation
      t.string :branding
      t.string :database_creation
      t.string :graphic_design
      t.string :other
    end
  end
end
