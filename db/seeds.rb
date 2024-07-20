# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
card_set = CardSet.create(
  name: 'Welcome to EZmem! I am a card "Set". Click on me to explore the memory cards in this set!'
)

card = card_set.cards.create(
  text: 'I am a memory card! You can create different cards and add them to this set or other sets you create by clicking "New card" above. To learn or practice a card, click "Learn this card" below it. To edit or remove a card, click "Show this card". Happy memorizing!'
)