Rails.application.routes.draw do
  resources :posts
  root 'posts#index'
  get 'sessions/new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/user' => 'users#show'
  delete '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
