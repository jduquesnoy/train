class CreateListUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :list_units do |t|
      t.references :unit, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
      t.integer :point
      t.integer :number

      t.timestamps
    end
  end
end
