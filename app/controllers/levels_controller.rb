class LevelsController < ApplicationController
  def show
    render json: Level.find(params[:id])
  end
end
