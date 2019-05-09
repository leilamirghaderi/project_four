Rails.application.routes.draw do
  get '/logout', to: 'sessions#logout', as: 'logout'
  get '/login', to: 'sessions#login', as: 'login'

  get '/auth/google_oauth2', as: 'google_oauth2_auth'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  resources :reflections, constraints: { id: /\d+/ }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'reflections#index'
end
