class LevelsController < ApplicationController
  def show
    render json: Level.first(params[:number])
  end
end
