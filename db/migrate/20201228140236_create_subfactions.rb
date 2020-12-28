class CreateSubfactions < ActiveRecord::Migration[6.0]
  def change
    create_table :subfactions do |t|
      t.string :name
      t.references :faction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
