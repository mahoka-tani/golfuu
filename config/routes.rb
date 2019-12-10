Rails.application.routes.draw do
  devise_scope :users do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users

  resources :orders
  get 'favorites/create'

  get 'favorites/destroy'

  resources :posts, only: [:index, :show, :new, :create] do
    resources :advises, only: [:create]
  
  resources :posts do
    resource :favorites, only: [:create, :destroy]
  end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index]
  get 'mypage/:id' => 'users#show',as: 'mypage'
  # ログイン、アカウント編集後、任意のページに推移させるための記述


  root "posts#index"
end

