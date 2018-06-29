Rails.application.routes.draw do
  resources :usersses
  devise_for :users
  resources :companies
  get 'welcome/index'
 
  root 'welcome#index'
end