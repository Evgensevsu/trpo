Rails.application.routes.draw do
<<<<<<< HEAD
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  resources :apartments
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
=======
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
>>>>>>> b57ee9a6c8b194fc038e02c3385308826f7330fd
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root 'home#index'
<<<<<<< HEAD
end
=======
end
>>>>>>> b57ee9a6c8b194fc038e02c3385308826f7330fd
