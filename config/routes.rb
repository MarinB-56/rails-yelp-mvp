Rails.application.routes.draw do
  # A visitor can see the list of all restaurants.
  # root to: 'restaurants#index', as: 'restaurants'
  # # get 'restaurants', to: 'restaurants#index'
  # # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  # get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # post 'restaurants', to: 'restaurants#create'
  # # # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # A visitor can add a new review to a restaurant
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create, :index]
  end
end
