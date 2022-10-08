class TasksController < ApplicationController

  def index
    # raise
    @tasks = Task.all
  end

  def show
    # raise
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new # Needed to instantiate the form_with
  end

  def create
    # raise
    task = Task.new(task_params)
    task.save
    redirect_to task_path(task)
  end

  def edit
    # raise
    @task = Task.find(params[:id])
  end

  def update
    # raise
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    # raise
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    # need a single instance of task and permitted with title, details and completed
    params.require(:task).permit(:title, :details, :completed)
  end
end
