class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.string :url
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :bookmarks, [:user_id, :created_at]
  end
end