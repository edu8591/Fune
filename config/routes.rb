Rails.application.routes.draw do
  devise_for :users
  resources :user, only: [] do
    resources :reservations, only: :index
  end
  root to: 'pages#home'
  resources :ships, only: %i[index show new create edit update] do
    resources :reservations, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
