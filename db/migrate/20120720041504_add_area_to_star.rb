class AddAreaToStar < ActiveRecord::Migration
  def change
    add_column :stars, :area, :string

  end
end
