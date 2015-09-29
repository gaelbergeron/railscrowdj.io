Rails.application.routes.draw do

  resources :users do
   resources :songs
  end


  root 'welcome#index'

end
