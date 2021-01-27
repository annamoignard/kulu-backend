Rails.application.routes.draw do
    scope '/auth' do
      post "/sign-up", to: "users#create" 
    end 
end
