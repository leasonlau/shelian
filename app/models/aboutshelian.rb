#coding: utf-8
class Aboutshelian < ActiveRecord::Base
	attr_accessible :title, :content

	validates_presence_of :title, :content

	def title_enum
		['社联章程','社联骨干','工作流程','主席团','秘书处','督导处','外联部','内务部','宣传部','策划部','新闻部']
	end

end
