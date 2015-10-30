Rails.application.routes.draw do
  resources :pokemons
  root to: 'home#index'
  patch '/capture', to: 'pokemon#capture'
  patch '/damage', to: 'pokemon#damage'
  get '/new', to: 'pokemon#new'

  devise_for :trainers
  resources :trainers
end
