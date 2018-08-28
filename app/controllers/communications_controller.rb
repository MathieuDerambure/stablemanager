class CommunicationsController < ApplicationController

  def index
    @comms = Communication.all.order(id: :desc)
  end

end
