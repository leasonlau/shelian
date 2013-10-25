class CreateAboutshelians < ActiveRecord::Migration
  def change
    create_table :aboutshelians do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
