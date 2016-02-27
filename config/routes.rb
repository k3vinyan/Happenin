Rails.application.routes.draw do
  root 'welcome#index'

  get '/uber' => 'uber#index'

  resources :businesses
  resources :customers
  resources :happenings

end
