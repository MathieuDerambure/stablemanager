class TasksController < ApplicationController
  before_action :set_horse, only: [:new, :create, :update]

  def tasks_index
    @tasks = Task.all

    users ||= User.all
    @owners = users.map{|user| user if user.role == "Propriétaire"}.compact
    @employees = users.map{|user| user if user.role == "Employée"}.compact
    @managers = users.map{|user| user if user.role == "Manager"}.compact
  end

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def mark_as_done
    Task.find(params[:task_id]).update(done: true)
    redirect_to tasks_index_path
  end

  def create
    @task = Task.new(task_params)

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
    params.require(:task).permit(:user_id,
                                  :horse_id,
                                  :food_id,
                                  :activity_id,
                                  :medecine_id,
                                  :shoe_maker_id,
                                  :vetenary_id,
                                  :comment_id,
                                  :antidote_id,
                                  :doing,
                                  :done,
                                  :start_time,
                                  :end_time)
  end

  def set_horse
    @horse = Horse.find(params[:horse_id])
  end

end
