class HorsesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_horse, only: [:show, :edit, :destroy, :update]

  def index
    @horses = Horse.all
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

  def horse_params
    params.require(:horse).permit(:name, :box, :formula, :photo)
  end

  def set_horse
    @horse = Horse.find(params[:id])
  end

end
