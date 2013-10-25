#coding: utf-8
module ApplicationHelper
  def full_title(page_title)
    base_title ="电子科大社团联合会"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end
