Rails.application.routes.draw do
  root 'businesses#new'

  resources :businesses
  resources :customers
  resources :happenings
end
