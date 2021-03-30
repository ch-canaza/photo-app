Rails.application.routes.draw do
  default_url_options host:'localhost:3000'
  devise_for :users, controllers: { registrations: 'registrations' }
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  root 'welcome#index'
end
