class ProjectsController < ApplicationController
  
  def index
    if Project.nil?
     
    else
      @projects = Project.includes(:images).all
    end
    render partial: 'projects'
  end
  
  def show 
    @project = Project.find(params[:id])
  end
  
end
