class Article < ActiveRecord::Base
	attr_accessible :title, :author, :unit, :content, :views_count
	
	validates_presence_of :title, :content

	acts_as_views_count :delay => 1
	# default_scope order: 'articles.created_at DESC'
end
