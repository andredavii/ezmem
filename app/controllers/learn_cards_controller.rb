class LearnCardsController < ApplicationController
  before_action :set_card

  def show
    learn_card = LearnCard.new(@card)
    @blanks_1 = learn_card.fill_ins_1
    # Generate and display blanked out text via LearnCard mocel
  end

  def update
    @downcased = @card.text.downcase
    @stripped = @downcased.strip
    @copied = params[:copied].downcase
    if @copied.strip == @stripped
      render "success", :status => 302
    else
      render "try_again", :status => 422
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
