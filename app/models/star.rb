#coding: utf-8
class Star < ActiveRecord::Base
	attr_accessible :name, :photo, :department, :position, :contact, :institute, :motto, :detail, :area
	
	validates_presence_of :name, :department, :area
	validates_uniqueness_of :name

  mount_uploader :photo, AttachmentUploader
  
  paginates_per 1

	def area_enum
		['社联之星','社团之星']
	end
end
