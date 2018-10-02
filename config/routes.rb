Rails.application.routes.draw do
  resources :events, except: [:destroy]
  resources :artists, only: [:index, :show]
  resources :users, except: [:index, :destroy]
  resources :tickets, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
