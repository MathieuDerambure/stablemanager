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
    redirect_to horses_path
  end

  private

  def set_week_days
    @week_days = [ "monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"]
  end

  def create_tasks
# FOOD >>> granule
  if params[:food]
    params[:food].keys.each do |slug|
      if params[:food][slug][:matin]
        task = Task.create(
          horse: @horse,
          user: current_user,
          start_time: DateTime.new(today.year, today.month, today.day, 8),
          daily: true,
          food_type: FoodType.find_by(slug: slug),
          food_quantity: params[:food][slug][:matin][:quantite]
        )
      end
      if params[:food][slug][:midi]
        task = Task.create(
          horse: @horse,
          user: current_user,
          start_time: DateTime.new(today.year, today.month, today.day, 8),
          daily: true,
          food_type: FoodType.find_by(slug: slug),
          food_quantity: params[:food][slug][:midi][:quantite]
        )
      end
      if params[:food][slug][:soir]
        task = Task.create(
          horse: @horse,
          user: current_user,
          start_time: DateTime.new(today.year, today.month, today.day, 8),
          daily: true,
          food_type: FoodType.find_by(slug: slug),
          food_quantity: params[:food][slug][:soir][:quantite]
        )
      end
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
            activity: Activity.find_by(slug: activity),
            activity_week_day: day,
            start_time: day_next_week(day)
          )
        end
      end
    end

   # VETO
    if veto_params[:name] && !veto_params[:next_date].blank?
      Task.create(
        horse: @horse,
        user: current_user,
        vetenary: Vetenary.find_by(slug: veto_params[:name]),
        start_time: DateTime.parse(veto_params[:next_date])
        )
    end

   # MARECHAL-FERRANT
    if shoe_maker_params[:name] && !shoe_maker_params[:next_date].blank?
      Task.create(
        horse: @horse,
        user: current_user,
        shoe_maker: ShoeMaker.find_by(slug: shoe_maker_params[:name]),
        start_time: DateTime.parse(shoe_maker_params[:next_date])
        )
    end

    # VACCINS / VERMIFUGES
    if antidote1_params[:name] && !antidote1_params[:next_date].blank?
     Task.create(
        horse: @horse,
        user: current_user,
        antidote: Antidote.find_by(slug: antidote1_params[:name]),
        start_time: DateTime.parse(antidote1_params[:next_date])
        )
    end


    if antidote2_params[:name] && !antidote2_params[:next_date].blank?
      Task.create(
        horse: @horse,
        user: current_user,
        antidote: Antidote.find_by(slug: antidote2_params[:name]),
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

  def shoe_maker_params
    params.require(:shoe_maker).permit(:name, :next_date)
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
