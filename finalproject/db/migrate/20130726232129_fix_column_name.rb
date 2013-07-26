class FixColumnName < ActiveRecord::Migration
	def change
    rename_column :users, :type, :profile_type
  end
end
