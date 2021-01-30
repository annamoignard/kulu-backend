Rails.application.routes.draw do
  resources :bookings, only: [:index, :show, :create] 
  resources :sessions, only: [:index, :show, :create, :edit, :destroy]
  resources :instructors, only: [:index, :show, :create, :edit, :destroy]
    scope '/auth' do
      post "/sign-up", to: "users#create" 
      post "/sign-in", to: 'users#sign_in'
    end 
  end
  