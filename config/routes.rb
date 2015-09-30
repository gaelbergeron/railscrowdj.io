Rails.application.routes.draw do

  resources :users do
   resources :songs
  end

  resources :songs


  root 'welcome#index'

end
