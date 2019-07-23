# frozen_string_literal: true

class RestrictedConstraint
  def initialize
    @ip = ['127.0.0.1']
  end

  def matches?(request)
    byebug
    @ip.include?(request.remote_ip)
  end
end

Rails.application.routes.draw do
  # get "/users_list", to: "users#index", as: "list_of_users"
  root to: 'users#index'
  resources :universities
  resources :users
  # resources :lyrics

  direct :homepage do
    'http://www.rubyonrails.org'
  end

  # scope(path_names: { new: 'neu', edit: 'bearbeiten' }) do
  #   resources :categories, path: 'kategorien'
  # end

  # end

  # match "another_method", to: "users#show", via: [:get, :delete]

  # resources :test do
  #   get "new_method", on: :new
  # end
  # resources :users, only: [:show]
  # resource :university
  # namespace :admin do
  #   resources :universities
  # end
  # scope :admin, as: "123123" do
  #   resources :subjects
  # end
end
