class RemoveTypeFromAilments < ActiveRecord::Migration
  def change
    remove_column :ailments, :type
  end
end
