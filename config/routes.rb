Rails.application.routes.draw do
  resources :uploads
  devise_for :users
    devise_scope :user do
      get '/users/sign_out' => 'devise/sessions#destroy' 
    root 'home#index'
    end
  get 'home/index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
