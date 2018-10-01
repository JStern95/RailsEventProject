Rails.application.routes.draw do
  resources :events, except: [:delete]
  resources :artists, only: [:index, :show]
  resources :users, except: [:index, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
