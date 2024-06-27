Rails.application.routes.draw do
  get 'homes/top'
  root to: "homes#top"
  resources :posts do
    resources :post_comments, only: [:create, :destroy]
  end
  resource :users, only:[:edit, :show, :update]

  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
