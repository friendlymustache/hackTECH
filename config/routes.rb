Hacktech::Application.routes.draw do
  get "messages/index"
  resources :events

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end