Rails.application.routes.draw do
  # get 'welcome/index'
  resources :users do
   resources :songs
  end

  resources :songs


  root 'welcome#index'

end
