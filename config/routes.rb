Rails.application.routes.draw do
  get 'applications/create'

  get 'applications/show'

  get 'applications/index'

  get 'favourites/create'

  get 'favourites/show'

  get 'reviews/create'

  get 'users/show'

  get 'users/update'

  get 'programs/show'

  get 'programs/index'

  get 'universities/show'

  get 'universities/index'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
