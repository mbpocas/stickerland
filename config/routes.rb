Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products do
    collection do
      get "my_stickers", to: "products#my_stickers"
    end
    resources :orders, only: %i[new create]
  end
  resources :orders, only: :show
end
