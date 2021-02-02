Rails.application.routes.draw do
  resources :sessions
  resources :bookings, only: [:index, :show, :create] 
  resources :instructors, only: [:index, :show, :create, :edit, :destroy]
  resources :status, only: [:index]
  resources :charges, only: [:create]
  get "/charges/success", to: "charges#success"
  get "/charges/cancel", to: "charges#cancel"
    scope '/auth' do
      post "/sign-up", to: "users#create" 
      post "/sign-in", to: 'users#sign_in'
    end 
  end
  