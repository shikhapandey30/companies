Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  resources :countries
  resources :add_companies
  resources :newplaces
  resources :newnodes
  resources :newregions
  resources :newcountries
  resources :newstates
  resources :newcities
  ActiveAdmin.routes(self)
  resources :companies
  #devise_for :newcity
  get 'companies/index'
  get 'add_companies/index'
	root 'companies#index'
  get '/location', to:'companies#location'
end