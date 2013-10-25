class Photo < ActiveRecord::Base
	attr_accessible :photo_file, :album_id, :description

	validates_presence_of :album_id, :photo_file

  belongs_to :album
  
  mount_uploader :photo_file, AttachmentUploader

  paginates_per 35
end
