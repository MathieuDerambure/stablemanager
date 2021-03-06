class TasksController < ApplicationController
  before_action :set_horse, only: [:new, :create, :update]
  before_action :load_food_tasks, only: [:mark_as_doing_food, :mark_as_done_food]

  def tasks_index
      @tasks = Task.due_today
      @horses = Horse.all
      # Permet de compter les tasks de différents type pour affiche le nombre
      #dans la bulle rouge de la navbar
      @tasks_activity = @tasks.where.not(activity_id: nil, done: true)
      @tasks_medecine = @tasks.where.not(medecine_id: nil, done: true)

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

  def mark_as_doing
    @task = Task.find(params[:task_id])
    @task.update(doing: true, user_doing: current_user)

    @task_type = @task.activity ? 'activity' : 'medecine'

    respond_to do |format|
      format.html {redirect_to tasks_index_path}
      format.js
    end
  end

  def mark_as_done
    @task = Task.find(params[:task_id])
    @task.update(done: true)
    respond_to do |format|
      format.html {redirect_to tasks_index_path}
      format.js
    end
  end

  # Multi update of FOOD tasks per time range: morning, midday or evening
  def mark_as_doing_food
    # for performance reasons, we update directly into the DB without passing by the models
    @tasks.update_all(doing: true, user_doing_id: current_user.id)

    # Needed because update_all calls directly the DB.
    # Hence the objects are not updated.
    @tasks.reload

    respond_to do |format|
      format.html { redirect_to tasks_index_path }
      format.js
    end
  end

  def mark_as_done_food
    # for performance reasons, we update directly into the DB without passing by the models
    @tasks.update_all(done: true)

    respond_to do |format|
      format.html { redirect_to tasks_index_path }
      format.js
    end
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
    @horse = Horse.find(params[:horse_id])
    @time  = params[:time] # can be either 'morning', 'midday' or 'evening'

    case @time
    when "morning"
      @tasks = @horse.morning_tasks
    when "midday"
      @tasks = @horse.midday_tasks
    when "evening"
      @tasks = @horse.evening_tasks
    end
  end
end
