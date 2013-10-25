class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :kind
      t.datetime :begin
      t.datetime :end
      t.string :address
      t.string :organizer
      t.string :sponsor
      t.text :content

      t.timestamps
    end
  end
end
