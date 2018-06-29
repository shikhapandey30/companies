Rails.application.routes.draw do
  devise_for :users
  resources :companies
  get 'welcome/index'
 
  root 'welcome#index'
end