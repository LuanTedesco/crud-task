class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  def index
    @tasks = Task.all

    if params[:search].present?
      @tasks = @tasks.where("title LIKE ?", "%#{params[:search]}%")
    end

    if params[:finished].present?
      @tasks = @tasks.where(finished: params[:finished])
    end

    @tasks = @tasks.order(created_at: :desc)
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    return unless @task.save

    redirect_to tasks_path
  end

  def update
    return unless @task.update(task_params)

    redirect_to tasks_path
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  def toggle_finished
    @task = Task.find(params[:id])
    @task.update(finished: !@task.finished)
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :finished)
  end
end
