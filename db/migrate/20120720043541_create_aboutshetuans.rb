class CreateAboutshetuans < ActiveRecord::Migration
  def change
    create_table :aboutshetuans do |t|
      t.string :name
      t.string :president
      t.string :contact
      t.string :kind
      t.string :institute
      t.datetime :begin
      t.boolean :is_excellent
      t.text :detail

      t.timestamps
    end
  end
end
