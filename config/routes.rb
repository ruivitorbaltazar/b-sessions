Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :meetings, path: 'sessions' do
    resources :meeting_trainees, path: 'trainees'
  end
end
