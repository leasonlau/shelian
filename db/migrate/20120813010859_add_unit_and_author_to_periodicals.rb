class AddUnitAndAuthorToPeriodicals < ActiveRecord::Migration
  def change
    add_column :periodicals, :unit, :string

    add_column :periodicals, :author, :string

  end
end
