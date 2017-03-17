Rails.application.routes.draw do
  get '/', to: 'finder#index'

  get 'customers/alphabetized', to: 'finder#alphabetized'

  get 'customers/missing_email', to: 'finder#missing_email'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'finder#index'
end
