Rails.application.routes.draw do
  get 'email/create'
  resources :posts
  root 'posts#index'
  get 'sessions/new'
  get '/email' => 'email#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/email' => 'email#create'
  get '/user' => 'users#show'
  delete '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
