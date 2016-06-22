require 'rails_helper'
require 'support/factory_girl'

describe 'highscores api' do

  let(:json) { JSON.parse(response.body) }

  describe '#index' do
    it 'serves all the highscores' do
      create_list :high_score, 2
      get '/highScores'
      expect(response).to be_success
      # expect(json['id']).to eq 2
    end
  end

end
