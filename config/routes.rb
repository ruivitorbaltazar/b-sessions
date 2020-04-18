Rails.application.routes.draw do
  root to: 'sessions#index'
  resources :sessions do
    resources :session_trainees
  end
end
