class CardSetCardsController < ApplicationController
  def index
    @card_set = CardSet.find(params[:card_set_id]) 
    @cards = @card_set.cards
  end
end
