Rails.application.routes.draw do
  resources :currency_masters
  resources :job_statuses
  resources :job_times
  resources :time_sheets
  resources :job_categories
  resources :jobs
  resources :customers
  resources :categories
  resources :statuses
  resources :roles
  resources :departments
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    passwords: 'users/passwords'
  }
  
  resources :members
 # devise_for :users, controllers: {
 #   passwords: 'users/passwords'
 # }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
