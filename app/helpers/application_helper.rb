module ApplicationHelper
  
  def title(page_title)
    if page_title
      @title = "#{page_title} | Rasart"
    else
      @title = "Сайт Rasart"
    end
    content_for :title, @title.to_s
  end
  
end
