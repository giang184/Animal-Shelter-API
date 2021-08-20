Rails.application.routes.draw do
  resources :animals
  get '/search' => 'search#index'
  get '/search/random' => 'search#random'
end

