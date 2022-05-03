class ProjectsController < ApplicationController
  def index
  end

  def projects
    
    @project = Project.create(
    name: params[:name],
    description: params[:description],
    start_date: params[:start_date],
    finish_date: params[:finish_date],
    state: params[:state]
   )
  
    @filtrado=params[:filter]
    if @filtrado == "empty"
      @projects = Project.all.order('created_at DESC') 
    else  
      @projects = Project.all.order('created_at DESC').where(state: @filtrado) 
    end
  end
end
