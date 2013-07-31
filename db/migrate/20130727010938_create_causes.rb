class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.boolean :adult_ed , default: false
      t.boolean :job_readiness, default: false
      t.boolean :special_needs, default: false
      t.boolean :animals, default: false
      t.boolean :childrens_ed, default: false
      t.boolean :environment, default: false
      t.boolean :health, default: false
      t.boolean :hunger, default: false
      t.boolean :seniors, default: false
      t.boolean :revitilization, default: false
      t.boolean :veterans, default: false
      t.boolean :homeless, default: false
      t.boolean :lgbt, default: false
      t.string :other
    end
  end
end
