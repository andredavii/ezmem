class LearnCard
  def initialize(card)
    @card = card
  end

  def card_text
    @card.text
  end

  def fill_ins_1
    num_blanks = card_text.length / 2
    random_items = (0...card_text.length).to_a.sample(num_blanks)
    blanks = card_text.chars

    random_items.each do |i|
      if blanks[i] != ' '
        blanks[i] = '_'
      end
    end

    blanks.join
  end
end
