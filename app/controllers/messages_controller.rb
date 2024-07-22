class MessagesController < ApplicationController
  before_action :set_project
  before_action :set_discussion_thread
  before_action :set_message, only: [:update, :destroy]

  def create
    @message = @discussion_thread.messages.build(message_params)
    @message.user = current_user
    if @message.save
      redirect_to @project, notice: 'Message was successfully created.'
    else
      redirect_to @project, alert: 'Error creating message.'
    end
  end

  def update
    if @message.update(message_params)
      redirect_to @project, notice: 'Message was successfully updated.'
    else
      redirect_to @project, alert: 'Error updating message.'
    end
  end

  def destroy
    @message.destroy
    redirect_to @project, notice: 'Message was successfully deleted.'
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_discussion_thread
    @discussion_thread = @project.discussion_threads.find(params[:discussion_thread_id])
  end

  def set_message
    @message = @discussion_thread.messages.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
