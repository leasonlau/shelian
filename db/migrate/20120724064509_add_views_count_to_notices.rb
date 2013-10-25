class AddViewsCountToNotices < ActiveRecord::Migration
  def change
    add_column :notices, :views_count, :integer

  end
end
