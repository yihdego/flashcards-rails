Rails.application.routes.draw do


  resources :decks, only: :index do
    resources :cards, only: :show
  end
  resources :games, only: [:create, :update, :show] do

  end
  root 'decks#index'
end
