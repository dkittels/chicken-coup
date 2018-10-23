Rails.application.routes.draw do
  root 'sessions#new'

  get 'game/index'

  mount ActionCable.server => '/cable'

  resources :games
  resources :messages

  get 'users/new'  => 'users#new', as: :new_user
  post 'users'     => 'users#create'

  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'  

  get 'browser/index'

  post 'games'     => 'games#create'
end
