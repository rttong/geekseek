class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :skills, :string
  	add_column :users, :job_history, :string
  	add_column :users, :phone, :string
  	add_column :users, :availability, :string 
  	add_column :users, :location, :string
  	add_column :users, :portfolio_links, :string
  end
end
