class CreateAilments < ActiveRecord::Migration
  def change
    create_table :ailments do |t|
      t.string :type
      t.text :description

      t.timestamps null: false
    end
  end
end
