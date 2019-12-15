Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: :index
  resources :authors, only: :show do
    resources :books, only: [:new, :create]

    get "/books", to: "books#index"
    get "/authors/:id", to: "author#show"
  end
end
