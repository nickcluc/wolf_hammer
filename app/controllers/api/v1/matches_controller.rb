class Api::V1::MatchesController < Api::V1::BaseController
  def index
    @matches = Match.all

    render json: @matches
  end

  def create
    
  end
end
