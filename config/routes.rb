Rails.application.routes.draw do
  resources :debts
  root 'accounts#index'
  resources :accounts
  devise_for :users
end
