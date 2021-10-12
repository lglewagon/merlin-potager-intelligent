Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gardens, only: [:new, :create, :index, :show, :destroy] do
    resources :plants, only: [:index, :destroy]
  end
  resources :squares, only: [:show, :update]


  # resources :square_tasks, only: [:show, :update]
  # resources :tasks, only: [:new, :create, :update, :destroy]
  # resources :associations, only: []

end
