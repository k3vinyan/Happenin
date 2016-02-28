Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'welcome#index'

  resources :businesses
  resources :customers
  resources :happenings

end
