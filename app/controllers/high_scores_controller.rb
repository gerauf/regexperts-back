class HighScoresController < ApplicationController
  def index
    render json: HighScore.all()
  end

  def create
    HighScore.create(high_score_params)
    render nothing: true
  end

  private

  def high_score_params
    params.require(:highScore).permit(:user, :score)
  end
end
