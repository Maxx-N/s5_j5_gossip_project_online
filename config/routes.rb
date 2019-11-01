Rails.application.routes.draw do
  
  get '/', to: 'welcome#home'
  get 'welcome/:user_name', to: 'welcome#name'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  resources :gossips
  resources :users
  resources :cities
  resources :sessions, only: [:new, :create, :destroy]

end
