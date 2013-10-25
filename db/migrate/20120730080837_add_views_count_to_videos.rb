class AddViewsCountToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :views_count, :integer

  end
end
