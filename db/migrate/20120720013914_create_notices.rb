class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.string :from
      t.text :content

      t.timestamps
    end
  end
end
