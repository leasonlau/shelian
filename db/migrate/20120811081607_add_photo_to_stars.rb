class AddPhotoToStars < ActiveRecord::Migration
  def change
    add_column :stars, :photo, :string

  end
end
