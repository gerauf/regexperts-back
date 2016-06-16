require 'rails_helper'
require 'support/factory_girl'

describe 'levels api' do

  let(:json) { JSON.parse(response.body) }

  describe '#show' do
    it 'serves the desired level' do
      create_list :level, 2
      get '/levels/2'
      expect(response).to be_success
      expect(json['id']).to eq 2
    end

  end

end
