Rails.application.routes.draw do
    scope '/auth' do
      post "/sign-up", to: "users#create" 
      post "/sign_in", to: 'users#sign_in'
    end 
end
