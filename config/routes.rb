Rails.application.routes.draw do
  resources :type_debts
  resources :type_accounts
  resources :debts
  resources :accounts
  devise_for :users
  root 'accounts#index'
end
