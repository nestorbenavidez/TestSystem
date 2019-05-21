Rails.application.routes.draw do
  resources :projects
  resources :customers
  get 'pages/dashboard'
  get 'pages/login'
  root :to => "pages#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
