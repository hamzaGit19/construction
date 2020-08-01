Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :options
  resources :questions
  resources :assessments, only: [:new, :create, :show]

  root to: 'assessments#index'
end
