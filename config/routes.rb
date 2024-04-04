Rails.application.routes.draw do
  # Define routes for kittens
  resources :kittens, only: [:index, :show]

  # Define a custom route for the top 3 page
  get '/top3', to: 'kittens#top3', as: 'top3'

  get '/random_kitten', to: 'kittens#random_kitten', as: 'random_kitten'

  # Define the root route
  root 'kittens#index'
end
