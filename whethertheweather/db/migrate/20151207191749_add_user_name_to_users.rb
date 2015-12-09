class AddUserNameToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :user_id
    add_column :users, :user_name, :string
  end
end
