#coding: utf-8
class Event < ActiveRecord::Base
	attr_accessible :title, :kind, :photo, :begin, :end, :address, :organizer, :sponsor, :area, :views_count, :contact, :is_index, :content
	
	validates_presence_of :title, :kind, :begin, :end, :address, :organizer, :content, :area

  mount_uploader :photo, AttachmentUploader
	
	acts_as_views_count :delay => 1
	# default_scope order: 'events.created_at DESC'
	
	def kind_enum
		['讲座沙龙','校园文化','竞赛创新','实践公益','其他']
	end
	def area_enum
		['社联活动','校园活动']
	end
end
