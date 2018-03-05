Rails.application.routes.draw do
  root 'about#index'

  resource :resume, only: [:show]
end
