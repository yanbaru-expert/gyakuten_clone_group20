class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|
      t.string :title
      t.text :detail
      t.timestamps
      t.references :question, foreign_key: true
    end
  end
end
