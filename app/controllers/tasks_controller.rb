class TasksController < ApplicationController
  before_action :set_project

  def create
    @task = @project.tasks.new(task_params)
    if @task.save
      redirect_to @project, notice: 'Task was successfully created.'
    else
      redirect_to @project, alert: 'Failed to create task.'
    end
  end

  def update
    @task = @project.tasks.find(params[:id])
    if @task.update(task_params)
      redirect_to @project, notice: 'Task was successfully updated.'
    else
      redirect_to @project, alert: 'Failed to update task.'
    end
  end

  def destroy
    @task = @project.tasks.find(params[:id])
    @task.destroy
    redirect_to @project, notice: 'Task was successfully deleted.'
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:title)
  end
end
