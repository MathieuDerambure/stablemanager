class CommunicationsController < ApplicationController

  def index
    @comm = Communication.all
  end

end
