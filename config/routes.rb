# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :songs
  root 'songs#index'
  # config/routes.rb
  resources :static_pages, only: %i[new create show edit update]
  get '/static_pages_list', to: 'static_pages#list', as: 'static_pages_list'
  post '/toggle_publish/:id', to: 'static_pages#toggle_publish', as: 'toggle_publish'
end
