Rails.application.routes.draw do
  resources :genres
  resources :movies
  post '/search_api', to: 'movies#search_api'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
