# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  skip_before_action :authenticate_user! , only: :home

  def home
    @tasks = Task.all
  end

end
