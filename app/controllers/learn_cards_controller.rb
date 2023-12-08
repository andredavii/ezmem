class LearnCardsController < ApplicationController
  before_action :set_card

  def show
    learn_card = LearnCard.new(@card)
    @blanks_1 = learn_card.fill_ins_1
    # Generate and display blanked out text via LearnCard mocel
  end

  def update
    if params[:copied] == @card.text
      render "success"
    else
      render "try_again"
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
