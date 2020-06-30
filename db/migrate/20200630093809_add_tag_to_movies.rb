class AddTagToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :tag, :string, dafault: "視聴済みにする"
  end
end
