class DiscussionThreadsController < ApplicationController
  before_action :set_project
  before_action :set_discussion_thread, only: [:update, :destroy]
  before_action :authorize_admin, only: [:create, :update, :destroy]

  def create
    @discussion_thread = @project.discussion_threads.build(discussion_thread_params)
    @discussion_thread.user = current_user
    if @discussion_thread.save
      redirect_to @project, notice: 'Thread was successfully created.'
    else
      redirect_to @project, alert: 'Error creating thread.'
    end
  end

  def update
    if @discussion_thread.update(discussion_thread_params)
      redirect_to @project, notice: 'Thread was successfully updated.'
    else
      redirect_to @project, alert: 'Error updating thread.'
    end
  end

  def destroy
    @discussion_thread.destroy
    redirect_to @project, notice: 'Thread was successfully deleted.'
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_discussion_thread
    @discussion_thread = @project.discussion_threads.find(params[:id])
  end

  def discussion_thread_params
    params.require(:discussion_thread).permit(:title)
  end

 

  def authorize_admin
    unless current_user.admin?
      redirect_to @project, notice: 'Only admins can create/update/delete a thread.'
    end
  end
end
