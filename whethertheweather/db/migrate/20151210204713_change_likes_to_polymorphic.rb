class ChangeLikesToPolymorphic < ActiveRecord::Migration
  def change
    add_column :likes, :likeable_id, :integer
    add_column :likes, :likeable_type, :string
    add_index :likes, :likeable_id

    remove_index :likes, :comment_id
    remove_column :likes, :comment_id
    remove_index :likes, :post_id
    remove_column :likes, :post_id
  end
end
