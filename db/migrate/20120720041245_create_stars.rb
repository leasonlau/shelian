class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.string :name
      t.string :department
      t.string :position
      t.string :contact
      t.string :institute
      t.string :motto
      t.text :detail

      t.timestamps
    end
  end
end
