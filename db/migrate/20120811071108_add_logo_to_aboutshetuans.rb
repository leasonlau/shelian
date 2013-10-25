class AddLogoToAboutshetuans < ActiveRecord::Migration
  def change
    add_column :aboutshetuans, :logo, :string

  end
end
