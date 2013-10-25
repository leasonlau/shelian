class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :description
      t.string :kind

      t.timestamps
    end
  end
end
