class TournamentsController < ApplicationController
  def index
  	@tournaments = Tournament.all
  end
  def show 
  	@tournament = Tournament.find(params[:id])
  	@matches = Match.where(:tournament_id => params[:id])
  end
end
