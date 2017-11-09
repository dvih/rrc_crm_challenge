Rails.application.routes.draw do
  get '' => 'customers#index', as: 'index'
  get 'customers/missing_email' => 'customers#missing_email', as: 'missing_email'
  get 'customers/alphabetized' => 'customers#alphabetized', as: 'alphabetized'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
