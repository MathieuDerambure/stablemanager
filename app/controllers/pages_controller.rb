class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @horses = Horse.all
    if params[:query1].present? || params[:query2].present?
      if params[:query1].present?
        @horses = @horses.search_horses(params[:query1])
      end

      # if params[:query2].present? && params[:query2].first != ""
      #   @horses = @horses.banner_search_level(params[:query2])
      # end
    end
  end

end
