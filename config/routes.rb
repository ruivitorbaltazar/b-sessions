Rails.application.routes.draw do
  root to: 'sessions#index'
  resources :sessions, except: :show
end
