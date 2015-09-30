Rails.application.routes.draw do
<<<<<<< HEAD
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
=======
  # get 'welcome/index'
  resources :users do
   resources :songs
  end
>>>>>>> 61b11a00a6374628ca93e9ddfca2a92fbb45ce55

  resources :songs


  root 'welcome#index'

end
