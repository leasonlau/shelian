class AddViewsCountToPeriodicals < ActiveRecord::Migration
  def change
    add_column :periodicals, :views_count, :integer

  end
end
