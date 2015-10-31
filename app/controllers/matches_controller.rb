class MatchesController < ApplicationController

def new
end

def index
	@matches = Match.all 
end

def show
	@match = Match.find(params[:id])
	@games = Game.where(:match_id => params[:id])	
end	

end
