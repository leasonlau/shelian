class AddAreaToEvent < ActiveRecord::Migration
  def change
    add_column :events, :area, :string

  end
end
