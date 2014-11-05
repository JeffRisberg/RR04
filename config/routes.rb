RR04::Application.routes.draw do
  
  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :activity_events

  resources :user_activities

  resources :activities

  resources :activity_types

  resources :users
  
  get "home/index"
  
  root :to => "home#index"
end
