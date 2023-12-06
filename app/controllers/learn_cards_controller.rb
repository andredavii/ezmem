class LearnCardsController < ApplicationController
  before_action :set_card

  def show
    # Generate and display blanked out text via LearnCard mocel
  end

  def update
    # Check text submitted from form on show page. If matching, show success message. 
    # If not, render show page again with error (maybe flash)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end
end
