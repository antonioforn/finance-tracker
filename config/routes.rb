Rails.application.routes.draw do

  devise_for :users, :controllers => {:registrations=> "user/registrations"}
  resources :user_stocks,  except: [:show, :edit, :update]
  resources :users,  only: [:show]
  resources :friendships

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'welcome#index'
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: "stocks#search"
  get 'my_friends', to: "users#my_friends"
  get 'search_friends', to: "users#search"
  post 'add_friend', to: "users#add_friend"


 #get '/about' => 'pages#about'

 #resources :articles

 #get 'signup', to: 'users#new'
 ###post 'users', to: 'users#create'
 ###or
 #resources :users, except: [:new]

 #get 'login' => 'sessions#new'
 #post 'login' => 'sessions#create'
 #delete 'logout' => 'sessions#destroy'

 #resources :categories, except: [:destroy]
end
