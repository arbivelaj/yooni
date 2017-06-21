Rails.application.routes.draw do
  devise_for :users
  get 'applications/create'

  get 'applications/show'

  get 'applications/index'

  get 'favourites/create'

  get 'favourites/show'

  get 'reviews/create'

  get 'users/show'

  get 'user/:id/profile', to: 'users#show' , as: 'user_profile'

  get 'users/update'

  get 'programs/show'

  get 'programs/index'

  get 'universities/show'

  get 'universities/index'

  get 'search', to: "programs#search", as: :search


  root to: 'pages#home'

  resources :programs do
    resources :favourites, only: :create
    resources :reviews, only: :create

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
