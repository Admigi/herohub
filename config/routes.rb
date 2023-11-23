Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :bookings do
    member do
      patch 'accept'
      patch 'decline'
    end
  end

  resources :heros do
    resources :reviews, only: [:new, :create]
  end

  resources :heros do
    resources :bookings, only: %i[index show new create update destroy]
  end
end
