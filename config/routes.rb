Rails.application.routes.draw do
  get 'dashboards/dashboard'

  resources :pianos do
    resources :bookings, only: [ :create]
  end

  get "/dashboards", to: "dashboards#dashboard"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
