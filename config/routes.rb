Rails.application.routes.draw do
  resources :customers
  resources :categories
  resources :statuses
  resources :roles
  resources :departments
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :members
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
