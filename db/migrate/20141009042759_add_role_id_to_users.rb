class AddRoleIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role_id, :integer
    add_column :users, :role_id, :integer, :default => 5
  end
end
