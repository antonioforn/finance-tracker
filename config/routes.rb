Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'welcome#index'
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: "stocks#search"

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
