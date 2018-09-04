class VisitesController < ApplicationController

  before_action :index_alert_vaccin
  before_action :index_alert_vet
  before_action :index_alert_shoe


  def index
    @alertes_vaccins=[]
    @vaccins_next.each do |vaccin|
      @comms = Communication.new(message: "#{vaccin.horse.name} le #{vaccin.start_time.strftime("%d %b %y")} - #{vaccin.antidote.name}")
      @alertes_vaccins<<@comms
    end

    @alertes_vets=[]
    @vets_next.each do |vet|
      @comm = Communication.new(message: "#{vet.horse.name} le #{vet.start_time.strftime("%d %b %y")}")
      @alertes_vets<<@comm
    end

    @alertes_shoes=[]
    @shoes_next.each do |shoe|
      @comm = Communication.new(message: "#{shoe.horse.name} le #{shoe.start_time.strftime("%d %b %y")}")
      @alertes_shoes<<@comm
    end
  end


private
  def index_alert_vaccin
    @vaccins = Task.where.not(antidote_id: nil)
    @vaccins_next = @vaccins.where("start_time >= ? AND start_time <= ?", (Date.today), (Date.today + 30))
  end


  def index_alert_vet
    @vets = Task.where.not(vetenary_id: nil)
    @vets_next = @vets.where("start_time >= ? AND start_time <= ?", (Date.today), (Date.today + 7))
  end

  def index_alert_shoe
    @shoes = Task.where.not(shoe_maker_id: nil)
    @shoes_next = @shoes.where("start_time >= ? AND start_time <= ?", (Date.today), (Date.today + 7))
  end
end
