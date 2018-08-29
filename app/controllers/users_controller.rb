class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :destroy, :update]

  def index
    @users = User.all
  end


  def show
  end




  private
  def user_params
    params.require(:user).permit(:sur_name, :first_name, :role, :phone, :address, :email, :photo)
  end

  def set_user
    @user = User.find(params[:id])
  end


end
