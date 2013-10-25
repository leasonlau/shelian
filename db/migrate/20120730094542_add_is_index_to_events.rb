class AddIsIndexToEvents < ActiveRecord::Migration
  def change
    add_column :events, :is_index, :boolean

  end
end
