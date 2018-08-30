class CommunicationsController < ApplicationController

before_action :set_comm, only: [:show, :edit, :update, :destroy]

  def index
    @comms = Communication.all.order(id: :asc).last(5)

    @comm = Communication.new


  end

  def show
  end

  def new
    @comm = Communication.new

  end

  def create
    @comm = Communication.new(comm_params)
    @comm.user = current_user

    respond_to do |format|
      if @comm.save
        format.html { redirect_to communications_path }
      else
        format.html { redirect_to communications_path, alert: @comm.errors.full_messages.first }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @comm.update(comm_params)
        format.html { redirect_to communications_path, notice: 'Message mis à jour.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @comm.destroy
    redirect_to communications_path

    # respond_to do |format|
    #   format.html { redirect_to communications_path, notice: 'Message effacé.' }
    # end
  end


  private

  def set_comm
    @comm = Communication.find(params[:id])
  end

  def comm_params
    params.require(:communication).permit(:message)
  end

end

