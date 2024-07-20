class LearnCardsController < ApplicationController
  before_action :set_card

  def show
    @learn_card = LearnCard.new(@card)
    @current_level = params[:level].to_i || 1
    
    case @current_level
    when 1
      @blanks = @learn_card.fill_ins_1(0)
      render "show"
    when 2
      @blanks = @learn_card.fill_ins_1(0.5)
      render "show2"
    when 3
      @blanks = @learn_card.fill_ins_1(0.75)
      render "show3"
    when 4
      @blanks = @learn_card.fill_ins_1(4)
      render "show4"
    when 5
      render "success"
    else
      @blanks = @learn_card.fill_ins_1(0)
    end
  end

  def update
    @downcased = @card.text.downcase
    @stripped = @downcased.strip
    @copied = params[:card][:copied].downcase  
  
    if @copied.strip == @stripped
      @current_level = params[:card][:level].to_i + 1  
      redirect_to learn_card_path(@card, level: @current_level)
    else
      @current_level = params[:card][:level].to_i
      render "try_again", status: 422
    end
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end
end
