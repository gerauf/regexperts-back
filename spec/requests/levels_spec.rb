require 'rails_helper'
require 'support/factory_girl'

describe 'levels api' do

  let(:json) { JSON.parse(response.body) }

  describe '#show' do
    it 'serves the desired level' do
      create :level
      get '/levels/1'
      expect(response).to be_success
      expect(json.first['id']).to eq 1
    end

  end

end
