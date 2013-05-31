class PagesController < ApplicationController
  
  before_filter :page_find, except: [:home]
  
  def page_find
    @page = Page.friendly.find(params[:id])
  end
  
  
  
  def home
    
  end
  
  def show
  end
  
end
