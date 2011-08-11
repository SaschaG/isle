Citywar::Application.routes.draw do



  devise_for :users
  resources :users, :only => [:index, :show]
  resources :villages
  root :to => 'pages#home'
end
