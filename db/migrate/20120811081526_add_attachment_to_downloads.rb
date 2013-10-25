class AddAttachmentToDownloads < ActiveRecord::Migration
  def change
    add_column :downloads, :attachment, :string

  end
end
