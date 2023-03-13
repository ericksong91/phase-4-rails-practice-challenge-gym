Rails.application.routes.draw do
  resources :memberships, only: [:create]
  resources :gyms, only: [:index, :show, :destroy]
  resources :clients, only: [:index, :show]
end
