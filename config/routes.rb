Rails.application.routes.draw do
  resources :projects
  resources :customers
  resources :sessions

  get 'pages/dashboard'
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"

  root :to => "sessions#new"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
