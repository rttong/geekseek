class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.boolean :web_designer, default: false
      t.boolean :web_developer, default: false
      t.boolean :technical_training, default: false
      t.boolean :graphic_design, default: false
      t.boolean :marketing, default: false
      t.string :other
    end
  end
end
