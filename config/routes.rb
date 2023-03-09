Rails.application.routes.draw do
  devise_for :users,
  controllers: { sessions: 'users/sessions',
    registrations: 'users/registrations'}
    get '/api/users/member-data', to: 'members#show'
  #  defaults: { format: :json }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "users#index"

  namespace :api do 
    resources :users, only: [:index, :show] do
      resources :bookings, only: [:index, :show, :create, :update, :destroy]
    end 
    resources :vehicles, only: [:index, :show, :create, :update, :destroy]     
  end
end
