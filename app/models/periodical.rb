class Periodical < ActiveRecord::Base
	attr_accessible :name, :author, :unit, :content, :views_count
	
	validates_presence_of :name, :content

	acts_as_views_count :delay => 1
	# default_scope order: 'periodicals.created_at DESC'
end
