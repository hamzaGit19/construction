Rails.application.routes.draw do
  resources :options
  resources :questions
  resources :assessments, only: %[new]

  root to: 'assessments#index'
end
