Rails.application.routes.draw do
  root 'about#index'
  # resources :articles, only: [:index, :show]
end
