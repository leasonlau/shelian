class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :video_id

      t.timestamps
    end
  end
end
