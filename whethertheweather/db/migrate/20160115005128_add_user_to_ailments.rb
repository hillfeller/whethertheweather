class AddUserToAilments < ActiveRecord::Migration
  def change
    add_column :ailments, :user_id, :integer, index: true, foreign_key: true

  end
end
