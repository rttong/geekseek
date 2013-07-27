class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :web_designer
      t.string :web_developer
      t.string :technical_training
      t.string :graphic_design
      t.string :marketing
      t.string :other
    end
  end
end
