Hacktech::Application.routes.draw do
  resources :events

  resources :sessions

  get "messages/index"
  root :to => "home#index"
  resources :users

  ## Routes for Home Page

  get "/prizes" => "home#prizes", as: "prizes"
  get "/schedule" => "home#schedule", as: "schedule"
  get "/lax" => "home#lax_info", as: "lax_info"
  get "/bus" => "home#bus_info", as: "bus_info"
  get "/judges" => "home#judges", as: "judges"
  get "/aws" => "home#aws", as: "aws"
  get "/participants" => "home#participants", as: "participants"
  get "/map" => "home#map", as: "maps"


  ## Admin Routes
  resources :sessions

  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do 
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end

end