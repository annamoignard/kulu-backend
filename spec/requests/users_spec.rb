require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'POST users#create' do
    context 'when the User is valid' do
      before(:example) do
        @user_params = FactoryBot.attributes_for(:user)
        post sign_up_path, params: { user: @user_params }, headers: authenticated_header
      end

      it 'returns http created' do
        expect(response).to have_http_status(:created)
      end

      it 'saves the User to the database' do
        expect(User.last.username).to eq(@user_params[:username])
      end
    end

    context 'when the User is invalid' do
      before(:example) do
        @user_params = FactoryBot.attributes_for(:user, :invalid)
        post sign_up_path, params: { user: @user_params }, headers: authenticated_header
        @json_response = JSON.parse(response.body)
      end

      it 'returns http unprocessable entity' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PUT users#update' do
    context 'when the User is updated' do
      before(:example) do
        @user_params = FactoryBot.attributes_for(:user)
        post sign_up_path, params: { user: @user_params }, headers: authenticated_header
        @id = User.last.id
      end
    
      it 'returns bad_request status of 400' do
        expect(response.status).to eq(400)
      end
    end
  end

    end

  describe 'GET users#index' do
    context 'returns the current user' do
      before(:example) do
        @user1 = FactoryBot.attributes_for(:user)
        @user2 = FactoryBot.attributes_for(:user)
        get all_users_path, headers: authenticated_header
        # @json_response = JSON.parse(response.body)
      end
      
      it 'returns http success' do
        expect(response).to have_http_status(:success)
      end

    end
  end

