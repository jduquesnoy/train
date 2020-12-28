class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :list, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :note

      t.timestamps
    end
  end
end
