Rails.application.routes.draw do
  root to: 'ideas#index'
  resources :ideas

  resources :searches, only: [:index]
  get '/search_results', to: 'searches#display_results', as: 'search_results'
end
