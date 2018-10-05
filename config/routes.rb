Rails.application.routes.draw do
  resources :events
  resources :artists, only: [:index, :show, :edit, :update]
  resources :users, except: [:index]
  resources :tickets, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/', to: 'homepage#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
