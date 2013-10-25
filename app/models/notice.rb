class Notice < ActiveRecord::Base
	attr_accessible :title, :from, :content, :views_count
	
	validates_presence_of :title, :content

	acts_as_views_count :delay => 1
	# default_scope order: 'notices.created_at DESC'
end
