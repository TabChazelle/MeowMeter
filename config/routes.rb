Rails.application.routes.draw do
  resources :kittens, only: [:index, :show] do
    resources :reactions, only: [:create]
  end

  get '/top3', to: 'kittens#top3', as: 'top3'
  get '/random_kitten', to: 'kittens#random_kitten', as: 'random_kitten'

  root 'kittens#index'
end
