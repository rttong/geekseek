class AddStateToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :state, :string, default: "active"
  end
end
