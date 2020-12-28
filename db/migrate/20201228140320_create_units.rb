class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :name
      t.integer :point
      t.string :image
      t.references :subfaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
