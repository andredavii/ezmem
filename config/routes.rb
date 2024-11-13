Rails.application.routes.draw do
  get 'home/index'

  resources :card_sets do
    get 'cards', :to => 'card_set_cards#index', :as => 'cards'
  end

  resources :cards 
  resources :learn_cards, :only => [:show, :update]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
