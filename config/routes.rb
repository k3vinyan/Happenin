Rails.application.routes.draw do
  root 'welcome#index'

  resources :businesses
  resources :customers
  resources :happenings

end
