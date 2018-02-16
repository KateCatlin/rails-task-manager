class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new
  end

  def birth
    task = Task.new(task_params)
    task.save
    redirect_to "/"
  end

  def update
    @task = Task.find(params[:id])
  end

  def rebirth
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to "/"
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to "/"
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

end
