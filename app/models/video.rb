class Video < ActiveRecord::Base
	attr_accessible :name, :video_id, :screenshot, :views_count
  
	validates_presence_of :name, :video_id, :screenshot

  mount_uploader :screenshot, AttachmentUploader
	
	acts_as_views_count :delay => 1

	default_scope order: 'videos.created_at DESC'

  paginates_per 12
end
