class CommunicationsController < ApplicationController

before_action :set_comm, only: [:show, :edit, :update, :destroy]

  def index
    @comms = Communication.all.order(id: :desc)
  end

  def show
  end

  def new
    @comm = Communication.new
    # render :index
  end

  def create
    @comm = Communication.new(comm_params)

    respond_to do |format|
      if @comm.save
        #ormat.html { redirect_to communications_path, notice: 'Message créé.' }
      else
        raise
        format.html { render :new }
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
    respond_to do |format|
      format.html { redirect_to communications_path, notice: 'Message effacé.' }
    end
  end


  private

  def set_comm
    @comm = Communication.find(params[:id])
  end

  def comm_params
    params.require(:communication).permit(:message)
  end

end

