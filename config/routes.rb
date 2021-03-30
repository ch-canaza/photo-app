Rails.application.routes.draw do
  default_url_options host:'localhost:3000'
  devise_for :users
  root 'welcome#index'
end
