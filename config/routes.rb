Rails.application.routes.draw do
  resources :bookings, only: [:index, :show, :create] 
    scope '/auth' do
      post "/sign-up", to: "users#create" 
      post "/sign-in", to: 'users#sign_in'
    end 
end
