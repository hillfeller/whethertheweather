class RemoveUserFromAilments < ActiveRecord::Migration
  def change
    remove_column :ailments, :integer
    remove_index :ailments
  end
end
