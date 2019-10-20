Rails.application.routes.draw do
  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'   
  }

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
    get "register/new", :to => "register/registrations#new"
  end
  
  root "tops#index"
  resources :signup, only: [:new]
  resources :login, only: [:new]
  
  namespace :mypage do
    resources :logout, only: [:index]
  end
  
  namespace :signup do
    resources :sms_confirmation, only: [:new, :create]
    resources :address, only: [:new, :create]
  end
  
end
