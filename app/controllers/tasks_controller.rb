class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.horse = Horse.find(params[:horse_id])
    if @task.save
      redirect_to horse_tasks_path
    else
      render :new
    end
  end

# À toi, développeur du futur :
# Yann pense qu'il faut toutes les actions du CRUD

  private
  def task_params
    params.require(:task).permit(:user_id, :horse_id, :food_id, :activity_id, :medecine_id, :shoe_maker_id, :vetenary_id, :comment_id, :doing, :done, :start_time, :end_time)
  end

end
