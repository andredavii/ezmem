class LearnCardsController < ApplicationController
  before_action :set_card

  def show
    # Generate and display blanked out text via LearnCard mocel
  end

  def update
    if params[:copied] == card_text
    end


    # Check text submitted from form on show page.
    # If matching, render success view. 
    # If not, render try again view.
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end
end
