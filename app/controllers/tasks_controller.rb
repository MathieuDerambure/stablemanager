class TasksController < ApplicationController
  before_action :set_horse, only: [:new, :create, :update]
  before_action :load_food_tasks, only: [:mark_as_doing_food, :mark_as_done_food]

  def tasks_index

      @tasks = Task.all
      @horses = Horse.all

      # Permet de compter les tasks de différents type pour affiche le nombre
      #dans la bulle rouge de la navbar
      @tasks_food_type = @tasks.map{|task| task if task.food_type}.compact
      @tasks_activity = @tasks.map{|task| task if task.activity}.compact
      @tasks_medecine = @tasks.map{|task| task if task.medecine}.compact


      users ||= User.all
      @owners = users.map{|user| user if user.role == "Propriétaire"}.compact
      @employees = users.map{|user| user if user.role == "Employée"}.compact
      @managers = users.map{|user| user if user.role == "Manager"}.compact

  end

  def today_tasks

    @tasks.select{|t| t.start_time == Date.today}

  end

  def index
    @tasks = Task.all
  end


  def new
    @task = Task.new
  end

  def mark_as_doing
    Task.find(params[:task_id]).update(doing: true, user_doing: current_user)
    redirect_to tasks_index_path
  end

  def mark_as_done
    Task.find(params[:task_id]).update(done: true)
    redirect_to tasks_index_path
  end

  # Multi update of FOOD tasks per time range: morning, midday or evening
  def mark_as_doing_food
    @tasks.update_all(doing: true, user_doing_id: current_user.id)
    redirect_to tasks_index_path
  end

  def mark_as_done_food
    @tasks.update_all(done: true)
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

  def load_food_tasks
    horse = Horse.find(params[:horse_id])
    time = params[:time]

    case time
    when "morning"
      @tasks = horse.morning_tasks
    when "midday"
      @tasks = horse.midday_tasks
    when "evening"
      @tasks = horse.evening_tasks
    end
  end
end
