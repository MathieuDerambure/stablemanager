class CreateAlertVaccinJob < ApplicationJob
  queue_as :default

  def perform(*args)

    @vaccins = Task.where.not(antidote_id: nil)
    @vaccins_next = @vaccins.where("start_time >= ? AND start_time <= ?", (Date.today + 1), (Date.today + 3))

    @vaccins_next.each do |vaccin|
      @comm = Communication.new(message: "Rappel vaccin: #{vaccin.horse.name} ce #{vaccin.start_time}")
      @comm.user = User.find_by(name: "admin")
      @comm.save

    end
  end

end
