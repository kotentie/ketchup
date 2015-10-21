class MatchesController < ApplicationController

def new
end

def create
	render plain: params[:match].inspect
end

end
