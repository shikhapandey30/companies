Rails.application.routes.draw do
  resources :add_companies
  resources :newplaces
  resources :newnodes
  resources :newregions
  resources :newcountries
  resources :newstates
  resources :newcities
  devise_for :users
  resources :companies
  devise_for :newcity
  get 'companies/index'
  get 'add_companies/index'
	root 'companies#index'
  get '/location', to:'companies#location'
end