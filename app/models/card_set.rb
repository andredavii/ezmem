class CardSet < ApplicationRecord
  has_many :cards, dependent: :destroy
end
