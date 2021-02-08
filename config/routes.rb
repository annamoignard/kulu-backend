# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sessions
  resources :bookings
  # resources :bookings, only: [:index, :show, :create, :destroy]
  resources :instructors, only: %i[index show create edit destroy]
  resources :status, only: [:index]
  resources :charges, only: [:create]
  scope '/auth' do
    post '/sign-up', to: 'users#create'
    post '/sign-in', to: 'users#sign_in'
  end
  get '/bookings/all', to: 'bookings#index'
  get '/bookings/new', to: 'bookings#create'
  get '/bookings/client/:id', to: 'bookings#show'
  get '/bookings/client', to: 'bookings#client'

  get '/charges/success', to: 'charges#success'
  get '/charges/cancel', to: 'charges#cancel'
end
