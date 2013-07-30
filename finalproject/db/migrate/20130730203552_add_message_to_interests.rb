class AddMessageToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :message, :string
  end
end
