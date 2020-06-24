class AddDisplayCountToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :display_count, :integer, default: 0
  end
end
