#coding: utf-8
class Aboutshetuan < ActiveRecord::Base
	attr_accessible :name, :president, :contact, :kind, :institute, :begin, :is_excellent, :detail, :logo
	
	validates_presence_of :name, :president, :kind, :begin
	validates_uniqueness_of :name
	# has_many :attachments, :as => :attachmentable, :dependent => :destroy

  mount_uploader :logo, AttachmentUploader

	def kind_enum
		['社会公益类','体育运动类','文艺特长类','学术创新类','应用实践类']
	end
end
