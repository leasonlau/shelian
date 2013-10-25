class CreatePeriodicals < ActiveRecord::Migration
  def change
    create_table :periodicals do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
