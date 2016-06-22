require 'rails_helper'
require 'support/factory_girl'

describe 'highscores api' do

  let(:json) { JSON.parse(response.body) }

  describe '#index' do
    it 'serves all the highscores' do
      create_list :high_score, 2
      get '/high_scores'
      expect(response).to be_success
      expect(json.count).to eq 2
    end
  end

  describe '#create' do
    it 'adds a new highscore to the db' do
      post '/high_scores', {highScore: {user: "Assange", score: 107}}
      expect(response).to be_success
      expect(HighScore.count).to eq 1
    end
  end

end
