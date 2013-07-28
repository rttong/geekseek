class RemoveColumnsFromCauses < ActiveRecord::Migration
  def change
      remove_column :causes, :adult_ed
      remove_column :causes, :job_readiness
      remove_column :causes, :special_needs
      remove_column :causes, :animals
      remove_column :causes, :childrens_ed
      remove_column :causes, :environment
      remove_column :causes, :health
      remove_column :causes, :hunger
      remove_column :causes, :seniors
      remove_column :causes, :revitilization
      remove_column :causes, :veterans
      remove_column :causes, :homeless
      remove_column :causes, :lgbt
      remove_column :causes, :other

      add_column :causes, :cause_type, :string
    end
end
