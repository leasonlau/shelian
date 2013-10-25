#coding: utf-8
class HomeController < ApplicationController
  def index
    @album = Album.first
  	@events = Event.order("created_at desc").where(:is_index => "1").limit(3)
  	@articles = Article.order("created_at desc").limit(5)
    @notices = Notice.order("created_at desc").limit(5)
    @periodicals = Periodical.order("created_at desc").limit(5)
    @events_shelian = Event.order("created_at desc").limit(5).where(:area => '社联活动')
    @events_xiaoyuan = Event.order("created_at desc").limit(5).where(:area => '校园活动')
    @video = Video.last
    @photos = Photo.order("created_at desc").limit(10)
  end
end
