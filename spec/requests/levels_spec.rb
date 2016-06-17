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

  describe '#show' do
    it 'serves the desired mission' do
      level = create :level, mission: 'This is your mission'
      get '/levels/3'
      expect(json['mission']).to eq 'This is your mission'
    end
  end

end
