class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :skills
    	t.string :job_history
    	t.string :phone
    	t.string :availability
    	t.string :location
      t.string :portfolio_links
      t.references :user
    end
  end
end
