class AddLabelToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :label_id, :integer, index: true
  end
end
