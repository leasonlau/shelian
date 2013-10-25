#coding: utf-8
class Download < ActiveRecord::Base
	attr_accessible :description, :kind, :attachment
	
	validates_presence_of :description, :kind, :attachment
	validates_uniqueness_of :attachment

  mount_uploader :attachment, AttachmentUploader

	def kind_enum
		['成立社团相关','社团事务相关','场地借用相关']
	end
end
