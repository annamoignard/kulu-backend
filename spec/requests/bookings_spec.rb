require 'rails_helper'

RSpec.describe 'Bookings', type: :request do
  describe 'GET bookings#index' do
    before(:example) do
      @first_booking = FactoryBot.create(:booking)
      get bookings_path
      @json_response = JSON.parse(response.body)
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'sessions contain the expected attributes' do
      expect(@json_response['booking'].first).to include({
       'name' => @first_booking.name
      })
    end
  end

  describe 'POST bookings#create' do
    context 'when the booking is valid' do
      before(:example) do
        @booking_params = FactoryBot.attributes_for(:booking)
        post bookings_path, params: { booking: @booking_params }, headers: authenticated_header
      end

      it 'returns http created' do
        expect(response).to have_http_status(:created)
      end

      it 'saves the booking to the database' do
        expect(Booking.last.session_id).to eq(@booking_params[:session_id])
      end
    end

    context 'when the booking is invalid' do
      before(:example) do
        @booking_params = FactoryBot.attributes_for(:booking, :invalid)
        post bookings_path, params: { booking: @booking_params }, headers: authenticated_header
        @json_response = JSON.parse(response.body)
      end

      # it 'return http unprocessable entity' do
      #   expect(response).to have_http_status(:unprocessable_entity)
      # end
    end
  end
end
