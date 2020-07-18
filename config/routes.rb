Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :options
  resources :questions
  resources :assessments
end
