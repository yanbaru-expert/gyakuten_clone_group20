class CreateWatchedTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :watched_texts do |t|
      t.integer :user_id, null: false, index: true
      t.integer :text_id, null:false, index: true

      t.timestamps
    end
      add_index :watched_texts, [:user_id, :text_id], unique: true
  end
end
