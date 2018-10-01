Rails.application.routes.draw do
  resources :events
  resources :tickets
  resources :reviews
  resources :artists
  resources :record_labels
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
