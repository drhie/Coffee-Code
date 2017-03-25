numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['♠', '♥', '♦', '♣']
deck = []

suits.each { |suit|
  numbers.each { |number|
    deck << [number, suit]
  }
}
