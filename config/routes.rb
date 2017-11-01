Rails.application.routes.draw do

  get 'main/index'

  get "login" => "sessions#new"

  post "login" => "sessions#create"

  delete "logout" => "sessions#destroy"

  resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
