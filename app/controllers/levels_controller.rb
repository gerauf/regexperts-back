class LevelsController < ApplicationController
  def show
    render json: Level.first(params[:id])
  end
end
