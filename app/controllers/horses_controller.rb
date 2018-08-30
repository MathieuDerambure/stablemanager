class HorsesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_horse, only: [:show, :edit, :destroy, :update]
  before_action :set_week_days, only: [:new]

  def index
    @horses = Horse.all
    if params[:query1].present?
      @horses = @horses.search_horses(params[:query1])
    end
  end


  def show
  end

  def new

    @horse = Horse.new
  end

  def create
    @horse = Horse.new(horse_params)
    @horse.user = current_user
    if @horse.save
      create_tasks
      raise
      redirect_to horses_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @horse.update(horse_params)
      redirect_to horse_path
    else
      render :edit
    end
  end

  def destroy
    @horse.destroy
  end

  private

  def set_week_days
    @week_days = [ "monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday", "all days" ]
  end

  def create_tasks

# FOOD >>> granule
    if params[:granule]
      food_type_fr = "Granulé"
      if params[:granule][:matin]
        Task.create(
          horse: @horse,
          user: current_user,
          start_time: DateTime.new(today.year, today.month, today.day, 8),
          daily: true,
          food_type: FoodType.find_by(name: food_type_fr),
          food_quantity: params[:granule][:matin][:quantite]
          )
      end
      if params[:granule][:midi]
        task = Task.create(
          horse: @horse,
          user: current_user,
          start_time: DateTime.new(today.year, today.month, today.day, 12),
          daily: true,
          food_type: FoodType.find_by(name: food_type_fr),
          food_quantity: params[:granule][:midi][:quantite]
          )
      end
      if params[:granule][:soir]
        Task.create(
          horse: @horse,
          user: current_user,
          start_time: DateTime.new(today.year, today.month, today.day, 19),
          daily: true,
          food_type: FoodType.find_by(name: food_type_fr),
          food_quantity: params[:granule][:soir][:quantite]
          )
      end
    end

# FOOD >>> floconnet
    if params[:floconnet]
      if params[:floconnet][:matin]
        Task.create(
          horse: @horse,
          user: current_user,
          start_time: DateTime.new(today.year, today.month, today.day, 8),
          daily: true,
          food_type: FoodType.find_by(name: "floconnet"),
          food_quantity: params[:floconnet][:matin][:quantite]
          )
      end
      if params[:floconnet][:midi]
        task = Task.create(
          horse: @horse,
          user: current_user,
          start_time: DateTime.new(today.year, today.month, today.day, 12),
          daily: true,
          food_type: FoodType.find_by(name: "floconnet"),
          food_quantity: params[:floconnet][:midi][:quantite]
          )
      end
      if params[:floconnet][:soir]
        Task.create(
          horse: @horse,
          user: current_user,
          start_time: DateTime.new(today.year, today.month, today.day, 19),
          daily: true,
          food_type: FoodType.find_by(name: "floconnet"),
          food_quantity: params[:floconnet][:soir][:quantite]
          )
      end
    end

# FOOD >>> winsor
    if params[:winsor]
      if params[:winsor][:matin]
        Task.create(
          horse: @horse,
          user: current_user,
          start_time: DateTime.new(today.year, today.month, today.day, 8),
          daily: true,
          food_type: FoodType.find_by(name: "winsor"),
          food_quantity: params[:winsor][:matin][:quantite]
          )
      end
      if params[:winsor][:midi]
        Task.create(
          horse: @horse,
          user: current_user,
          start_time: DateTime.new(today.year, today.month, today.day, 12),
          daily: true,
          food_type: FoodType.find_by(name: "winsor"),
          food_quantity: params[:winsor][:midi][:quantite]
          )
      end
      if params[:winsor][:soir]
        Task.create(
          horse: @horse,
          user: current_user,
          start_time: DateTime.new(today.year, today.month, today.day, 19),
          daily: true,
          food_type: FoodType.find_by(name: "winsor"),
          food_quantity: params[:winsor][:soir][:quantite]
          )
      end
    end

# ACTIVITY
    if params[:activity]
      params[:activity].keys.each do |activity|
        params[:activity][activity.to_sym].keys.each do |day|
          Task.create(
          horse: @horse,
          user: current_user,
          weekly: true,
          activity: Activity.find_by(name: activity),
          activity_week_day: day,
          start_time: day_next_week(day)
          )
        end
      end
    end

   # VETO
    if veto_params[:name] && !veto_params[:next_date].blank?
      task = Task.create(
        horse: @horse,
        user: current_user,
        vetenary: Vetenary.find_by(name: veto_params[:name]),
        start_time: DateTime.parse(veto_params[:next_date])
        )
    end

    # VACCINS / VERMIFUGES
    if antidote1_params[:name] && !antidote1_params[:next_date].blank?
      Task.create(
        horse: @horse,
        user: current_user,
        antidote: Antidote.find_by(name: antidote1_params[:name]),
        start_time: DateTime.parse(antidote1_params[:next_date])
        )
    end

    if antidote2_params[:name] && !antidote2_params[:next_date].blank?
      Task.create(
        horse: @horse,
        user: current_user,
        antidote: Antidote.find_by(name: antidote2_params[:name]),
        start_time: DateTime.parse(antidote2_params[:next_date])
        )
    end


  end



  def horse_params
    params.require(:horse).permit(:name, :box, :formula, :user_id, :photo)
  end

  def veto_params
    params.require(:vetenary).permit(:name, :next_date)
  end


  def antidote1_params
    params.require(:antidote1).permit(:name, :next_date)
  end

  def antidote2_params
    params.require(:antidote2).permit(:name, :next_date)
  end

  def set_horse
    @horse = Horse.find(params[:id])
  end

  def day_next_week(day)
    week_day_this_week = DateTime.parse(day)
    week_day_next_week = week_day_this_week.days_ago(-7)
    task_date = week_day_this_week > today ? week_day_this_week : week_day_next_week
  end

end
