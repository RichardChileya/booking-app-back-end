Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"

  namespace :api do 
    resources only: [:index, :show] do

    end
  end
end
