require 'rails_helper'

RSpec.describe "Bookings", type: :request do
  describe "GET bookings#index" do
    before(:example) do
      @first_booking = FactoryBot.create(:booking, session: 'vinyasa', user: '1')
      @second_booking= FactoryBot.create(:booking, session: 'power', user: '2')
      get bookings_path
      @json_response = JSON.parse(response.body)
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it 'sessions contain the expected attributes' do
      expect(@json_response['booking'].first).to include({
        'name' => @first_booking.name
      })
    end
  end
end
