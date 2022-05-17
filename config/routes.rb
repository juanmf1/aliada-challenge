Rails.application.routes.draw do
  resources :miembros do
    member do
      get :tickets
    end
  end
  resources :tickets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "tickets#index"
end
