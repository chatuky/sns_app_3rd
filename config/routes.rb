Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    get '/', to: 'posts#new', as: 'new_post'
    get 'home/view', to: 'homes#index', as: 'index_home'  
    get 'friend', to: 'friends#follow', as: 'follow_friend'
    get 'profile', to: 'profiles#info' , as: 'info_profile'
    # この行を追加
    post 'profile', to: 'profiles#info' , as: 'create_profile' 
    get 'search' , to: 'searches#name' , as: 'name_search'
end
