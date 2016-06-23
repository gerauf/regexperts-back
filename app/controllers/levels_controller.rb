class LevelsController < ApplicationController
  def show
    render json: Level.find_by(number: params[:id])
  end
end
