class AddUserToAilments < ActiveRecord::Migration
  def change
    add_column :ailments, :user_id, index: true, foreign_key: true
  end
end
