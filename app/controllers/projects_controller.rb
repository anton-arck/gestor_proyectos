class ProjectsController < ApplicationController
  def index
    # @projects = Project.all.order('created_at DESC')
  end

  def projects
   @project = Project.create(
    name: params[:name],
    description: params[:description],
    created_at: params[:created_at],
    finish_date: params[:finish_date],
    state: params[:state])
    @projects = Project.all.order('created_at DESC')

  end
end
