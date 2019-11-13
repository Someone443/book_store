Rails.application.routes.draw do
  devise_for :users

  #resources :categories, only: [] do
  #  resources :books, only: [:index]
  #end

  #resources :books, only: [:index, :show]
  
  #resources :categories, only: [] do
  #  resources :books, only: [:index, :show]
  #end


  #resources :books, only: [] do
  #  resources :categories, only: [:show]
  #end


  resources :books, only: [:index]

  get "books/:category_id", to: 'books#index', as: :books_category # Is this a category#show ?? But we will render books#index all the same. 
                                                                       # Maybe we should use books#index also with some get param? Or some custom action? 
  get "books/:category_id/:id", to: 'books#show', as: :book 
  # Book should have strict URL with only 1 his category but not any category. E.g.: '/mobile/1' and '/embed/1' should not be the same book. How?


  #namespace :books do
  #  resources :categories, only: [:show]
  #end

  #resources :products, only: [:index, :show]
  #resources :categories, only: [:show]

  root 'pages#home'
end
