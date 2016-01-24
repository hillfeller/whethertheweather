class RemovePostsFromLikes < ActiveRecord::Migration
  def change
    remove_index :likes, :post_id
    remove_column :likes, :post_id
  end
end
