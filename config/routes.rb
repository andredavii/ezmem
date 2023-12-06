Rails.application.routes.draw do
  resources :cards 
  resources :learn_cards, :only => [:show, :update]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "cards#index"
end
