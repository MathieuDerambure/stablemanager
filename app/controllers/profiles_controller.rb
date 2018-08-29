class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :destroy, :update]

  def index
    users ||= User.all
    @owners = users.map{|user| user if user.role == "Propriétaire"}.compact
    @employees = users.map{|user| user if user.role == "Employée"}.compact
    @managers = users.map{|user| user if user.role == "Manager"}.compact
  end


  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path
    else
      render :edit
    end
  end


  private
  def user_params
    params.require(:user).permit(:sur_name, :first_name, :role, :phone, :address, :email, :photo)
  end

  def set_user
    @user = User.find(params[:id])
  end


end
