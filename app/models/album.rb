class Album < ActiveRecord::Base
	attr_accessible :name, :description
	
	has_many :photos, :dependent => :destroy
	
	validates_presence_of :name
	
	validates_uniqueness_of :name

  paginates_per 12

	default_scope order: 'albums.created_at DESC'

	def at_least_one_photo?
		delf.photos.present?
	end
end
