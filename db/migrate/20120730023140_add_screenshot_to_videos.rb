class AddScreenshotToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :screenshot, :string

  end
end
