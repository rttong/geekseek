class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.string :adult_ed
      t.string :job_readiness
      t.string :special_needs
      t.string :animals
      t.string :childrens_ed
      t.string :environment
      t.string :health
      t.string :hunger
      t.string :seniors
      t.string :revitilization
      t.string :veterans
      t.string :homeless
      t.string :lgbt
      t.string :other
    end
  end
end
