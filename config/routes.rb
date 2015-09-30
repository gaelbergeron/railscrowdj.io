Rails.application.routes.draw do
  # get 'sessions/new'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'



  resources :users do
   resources :songs
  end
  resources :songs


  root 'welcome#index'

end
