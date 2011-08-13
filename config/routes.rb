Citywar::Application.routes.draw do



  devise_for :users
  resources :users, :only => [:index, :show]
  resources :villages
  match "villages/:id/post_info" => 'villages#post_info', :controller => 'villages', :action => 'post_info'

  root :to => 'pages#home'
end
