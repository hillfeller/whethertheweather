class AddNameToLabels < ActiveRecord::Migration
  def change
    add_column :labels, :name, :string
    add_column :labels, :created_at, :datetime
    add_column :labels, :updated_at, :datetime
  end
end
