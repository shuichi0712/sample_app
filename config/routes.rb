Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  # get 'static_pages/home'
  get "/about", to: 'static_pages#about'
  get "/help", to: 'static_pages#help'
  get "/signup", to: 'users#new'
  get "/contact", to: 'static_pages#contact'
  # root "application#hello"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
