# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Sessions', type: :request do
  describe 'GET sessions#index' do
    before(:example) do
      @first_session = FactoryBot.create(:session, instructor: 'foo', cost: '$25', day: 'Sunday')
      @second_session = FactoryBot.create(:session, instructor: 1, cost: '$25', day: 'Monday')
      get sessions_path
      @json_response = JSON.parse(response.body)
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'sessions contain the expected attributes' do
      expect(@json_response['sessions'].first).to include({
                                                            'day' => @first_session.day,
                                                            'name' => @first_session.name
                                                          })
    end
  end
end
