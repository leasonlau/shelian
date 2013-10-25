class AddViewsCountToEvents < ActiveRecord::Migration
  def change
    add_column :events, :views_count, :integer

  end
end
