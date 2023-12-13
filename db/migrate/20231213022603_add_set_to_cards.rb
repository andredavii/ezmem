class AddSetToCards < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :card_set, foreign_key: true
  end
end
