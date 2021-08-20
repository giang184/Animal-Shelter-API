Rails.application.routes.draw do
  resources :animals
  get '/search' => 'search#index'
  get '/random' => 'random#index'
end

