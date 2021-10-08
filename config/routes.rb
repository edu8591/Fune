Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [] do
    resources :invoices, only: %i[index show]
  end
  root to: 'pages#home'
  resources :ships, only: %i[index show new create edit update] do
    resources :reservations, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
