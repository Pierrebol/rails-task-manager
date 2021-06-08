class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)

    if task.save
      redirect_to task_path(task)
    else
      raise
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :important)
  end
end
