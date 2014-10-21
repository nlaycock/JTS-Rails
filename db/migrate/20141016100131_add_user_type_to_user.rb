class AddUserTypeToUser < ActiveRecord::Migration
  def up
    add_column :users, :user_type, :integer
  end

  def down
    remove_column :users, :user_type, :integer
  end
end
