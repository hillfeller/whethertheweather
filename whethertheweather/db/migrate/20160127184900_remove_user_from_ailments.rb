class RemoveUserFromAilments < ActiveRecord::Migration
  def change
    remove_column :ailments, :user_id
  end
end
