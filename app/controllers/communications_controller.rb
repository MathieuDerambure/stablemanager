class CommunicationsController < ApplicationController

before_action :set_comm, only: [:show, :edit, :update, :destroy]

  def index
    # @comms = Communication.all.order(id: :asc).last(2)

    @comms = Communication.all.order(id: :desc).page(params[:page])

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

  #######################################################

  ### DO NOT DELETE ###

  def create_alert_vaccin
    @vaccins = Task.where.not(antidote_id: nil)
    @vaccins_next = @vaccins.where("start_time >= ? AND start_time <= ?", (Date.today + 1), (Date.today + 3))

    @vaccins_next.each do |vaccin|
      @comm = Communication.new(message: "VACCIN: #{vaccin.horse.name} le #{vaccin.start_time.strftime("%d %b %y")}")
      #@comm.user = User.last
      @comm.user = User.find_by(admin: true)
      @comm.save
    end

    redirect_to communications_path
  end

  def create_alert_vet
    @vets = Task.where.not(vetenary_id: nil)
    @vets_next = @vets.where("start_time >= ? AND start_time <= ?", (Date.today + 1), (Date.today + 3))

    @vets_next.each do |vet|
      @comm = Communication.new(message: "VETERINAIRE: #{vet.horse.name} le #{vet.start_time.strftime("%d %b %y")}")
      #@comm.user = User.last
      @comm.user = User.find_by(admin: true)
      @comm.save
    end

    redirect_to communications_path
  end

  def create_alert_shoe
    @shoes = Task.where.not(shoe_maker_id: nil)
    @shoes_next = @shoes.where("start_time >= ? AND start_time <= ?", (Date.today + 1), (Date.today + 3))

    @shoes_next.each do |shoe|
      @comm = Communication.new(message: "MAR.FERRANT: #{shoe.horse.name} le #{shoe.start_time.strftime("%d %b %y")}")
      @comm.user = User.find_by(admin: true)
      @comm.save
    end

    redirect_to communications_path
  end

  #######################################################

  private

  def set_comm
    @comm = Communication.find(params[:id])
  end

  def comm_params
    params.require(:communication).permit(:message)
  end

end

