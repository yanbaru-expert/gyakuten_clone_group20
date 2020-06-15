class CreateEditMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :edit_movies do |t|
      t.string :title
      t.string :url
      t.timestamps
    end
  end
end
