class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :point_category
      t.integer :point_number
      t.float :note
      t.references :subfaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
