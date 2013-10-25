class Link < ActiveRecord::Base
	attr_accessible :name, :address
	validates_presence_of :name, :address
	validates_uniqueness_of :name, :address
end
