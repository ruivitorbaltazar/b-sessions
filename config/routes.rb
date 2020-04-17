Rails.application.routes.draw do
  get 'trainees/index'
  get 'trainees/show'
  get 'trainees/new'
  get 'trainees/create'
  get 'trainees/edit'
  get 'trainees/update'
  get 'trainees/destroy'
  root to: 'sessions#index'
  resources :sessions
end
