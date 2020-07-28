Rails.application.routes.draw do
  resources :options
  resources :questions
  resources :assessments, only: [:new, :create, :show]

  root to: 'assessments#index'
end
