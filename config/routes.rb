Rails.application.routes.draw do
  devise_for :users
  resources :reservations, only: %i[index show]
  resources :invoices, only: %i[index show]
  root to: 'pages#home'
  resources :ships, only: %i[index show new create edit update] do
    resources :reservations, only: :create
  end
  resources :reservation, only: [] do
    resources :invoices, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
