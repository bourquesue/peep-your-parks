root to: 'parks#index'

Rails.application.routes.draw do
  resources :parks
  resources :photos
end
