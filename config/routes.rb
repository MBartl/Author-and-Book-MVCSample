Rails.application.routes.draw do

  resources :authors
  resources :books, only: [:index, :show]
  resources :credits, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
