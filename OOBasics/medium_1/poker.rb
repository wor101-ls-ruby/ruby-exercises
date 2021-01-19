require 'pry'

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  
  def initialize
    @deck = create_deck
  end
  
  def create_deck
    new_deck =[]
    RANKS.each do |rank|
      SUITS.each { |suit| new_deck << Card.new(rank, suit) }
    end
    new_deck.shuffle
  end
  
  def draw
    @deck = create_deck if @deck.empty?
    @deck.pop
  end
  
  def to_s
    cards = []
    @deck.each { |card| cards << card.to_s }
    cards.join(', ')
  end
end

class Card
  include Comparable
  attr_reader :rank, :suit

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def value
    VALUES.fetch(rank, rank)
  end

  def <=>(other_card)
    value <=> other_card.value
  end
end

class PokerHand
  def initialize(deck)
    @hand = deck
    @hand_ranks = get_ranks
    @hand_suits = get_suits
  end

  def print
    puts @hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private
  
  attr_reader :hand_ranks, :hand_suits
  
  def get_ranks
    @hand.map { |card| card.rank } 
  end
  
  def get_suits
    @hand.map { |card| card.suit }
  end
  
  def get_values
    @hand.map { |card| card.value }
  end
  

  def royal_flush?
    royal = hand_ranks.include?(10) &&
            hand_ranks.include?('Ace') &&
            hand_ranks.include?('Queen') &&
            hand_ranks.include?('King') &&
            hand_ranks.include?('Jack')
    flush = (hand_suits.uniq.size == 1)
    royal == true && flush == true
  end

  def straight_flush?
    #binding.pry
    straight? && flush?
  end

  def four_of_a_kind?
    hand_values = get_values
    answer = false
    hand_values.each do |value|
      answer = true if hand_values.count(value) > 3
    end
    answer
  end

  def full_house?
    values = get_ranks
    hand_of_three = values.select { |value| values.count(value) == 3 }
    hand_of_two = values.select { |value| values.count(value) == 2 }
    hand_of_three.size == 3 && hand_of_two.uniq.size == 1
  end

  def flush?
    hand_suits = get_suits
    hand_suits.uniq.size == 1
  end

  def straight?
    hand_values = get_values
    low_card = hand_values.min
    hand_values.include?(low_card + 1) &&
    hand_values.include?(low_card + 2) && 
    hand_values.include?(low_card + 3) &&
    hand_values.include?(low_card + 4)
  end

  def three_of_a_kind?
    hand_values = get_values
    answer = false
    hand_values.each do |value|
      answer = true if hand_values.count(value) > 2
    end
    answer
  end

  def two_pair?
    hand_values = get_values
    number_of_pairs = 0
    hand_values.uniq.each do |value|
      number_of_pairs += 1 if hand_values.count(value) == 2
    end
    number_of_pairs == 2
  end

  def pair?
    hand_values = get_values
    answer = false
    hand_values.each do |value|
      answer = true if hand_values.count(value) > 1
    end
    answer
  end
end


# In the previous two exercises, you developed a Card class and a Deck class. 
# You are now going to use those classes to create and evaluate poker hands. 
# Create a class, PokerHand, that takes 5 cards from a Deck of Cards and evaluates those cards as a Poker hand. 
# If you've never played poker before, you may find this overview of poker hands useful.

# You should build your class using the following code skeleton:

# The exact cards and the type of hand will vary with each run.

# Most variants of Poker allow both Ace-high (A, K, Q, J, 10) and Ace-low (A, 2, 3, 4, 5) straights. 
# For simplicity, your code only needs to recognize Ace-high straights.



# hand = PokerHand.new(Deck.new)
# hand.print
# puts hand.evaluate

# # Danger danger danger: monkey
# # patching for testing purposes.
# class Array
#   alias_method :draw, :pop
# end

# Test that we can identify each PokerHand type.


# hand = PokerHand.new([
#   Card.new(10,      'Hearts'),
#   Card.new('Ace',   'Hearts'),
#   Card.new('Queen', 'Hearts'),
#   Card.new('King',  'Hearts'),
#   Card.new('Jack',  'Hearts')
# ])
# hand.print
# puts hand.evaluate == 'Royal flush'


hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
hand.print
puts hand.evaluate == 'Straight flush'



hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'


hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
p hand.evaluate
puts hand.evaluate == 'Full house'


hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'



hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'



hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'


hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
p hand.evaluate
puts hand.evaluate == 'Three of a kind'



hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'


hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'




# EXPECTED OUTPUT
# 5 of Clubs
# 7 of Diamonds
# Ace of Hearts
# 7 of Clubs
# 5 of Spades
# Two pair
# true
# true
# true
# true
# true
# true
# true
# true
# true
# true
# true
# true
# true

=begin
LAUNCH SCHOOL ANSWER
class PokerHand
  def initialize(cards)
    @cards = []
    @rank_count = Hash.new(0)

    5.times do
      card = cards.draw
      @cards << card
      @rank_count[card.rank] += 1
    end
  end

  def print
    puts @cards
  end

  def evaluate
    if    royal_flush?     then 'Royal flush'
    elsif straight_flush?  then 'Straight flush'
    elsif four_of_a_kind?  then 'Four of a kind'
    elsif full_house?      then 'Full house'
    elsif flush?           then 'Flush'
    elsif straight?        then 'Straight'
    elsif three_of_a_kind? then 'Three of a kind'
    elsif two_pair?        then 'Two pair'
    elsif pair?            then 'Pair'
    else 'High card'
    end
  end

  private

  def flush?
    suit = @cards.first.suit
    @cards.all? { |card| card.suit == suit }
  end

  def straight?
    return false if @rank_count.any? { |_, count| count > 1 }

    @cards.min.value == @cards.max.value - 4
  end

  def n_of_a_kind?(number)
    @rank_count.one? { |_, count| count == number }
  end

  def straight_flush?
    flush? && straight?
  end

  def royal_flush?
    straight_flush? && @cards.min.rank == 10
  end

  def four_of_a_kind?
    n_of_a_kind?(4)
  end

  def full_house?
    n_of_a_kind?(3) && n_of_a_kind?(2)
  end

  def three_of_a_kind?
    n_of_a_kind?(3)
  end

  def two_pair?
    @rank_count.select { |_, count| count == 2 }.size == 2
  end

  def pair?
    n_of_a_kind?(2)
  end
end

=end