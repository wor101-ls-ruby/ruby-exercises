class GuessingGame
  RANGE = (1..100)
  MAX_GUESSES = 7
  
  attr_reader :remaining_guesses

  def initialize
    @winning_number = RANGE.to_a.sample    
    @remaining_guesses = MAX_GUESSES
    @winner = false
  end
  
  def play
    reset
    until remaining_guesses == 0 || @winner == true
      puts "You have #{remaining_guesses} guesses remaining."
      answer = ''
      loop do
        print "Enter a number between 1 and 100: "
        answer = gets.chomp.to_i
        break if valid_guess?(answer)
        print "Invalid guess. "
      end
      check_answer(answer)
    end
    puts "Thanks for playing!"
  end
  
  private
  
  def reset
    @winning_number = RANGE.to_a.sample
    @remaining_guesses = MAX_GUESSES
    @winner = false
  end
  
  def valid_guess?(answer)
    (1..100).cover?(answer)
  end
  
  def check_answer(answer)
    if answer == @winning_number
      winner
    elsif answer < @winning_number
      puts "Your guess is too low"
      puts ""
      @remaining_guesses -= 1
    else
      puts "Your guess is too high"
      puts ""
      @remaining_guesses -= 1
    end
  end
  
  def winner
    puts "That's the number!"
    puts ""
    puts "You won!"
    @winner = true
  end
end



game = GuessingGame.new
game.play


# Create an object-oriented number guessing class for numbers in the range 1 to 100, with a limit of 7 guesses per game. The game should play like this:

# Note that a game object should start a new game with a new number to guess with each call to #play.


=begin
You have 7 guesses remaining.
Enter a number between 1 and 100: 104
Invalid guess. Enter a number between 1 and 100: 50
Your guess is too low.

You have 6 guesses remaining.
Enter a number between 1 and 100: 75
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 85
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 0
Invalid guess. Enter a number between 1 and 100: 80

You have 3 guesses remaining.
Enter a number between 1 and 100: 81
That's the number!

You won!

game.play

You have 7 guesses remaining.
Enter a number between 1 and 100: 50
Your guess is too high.

You have 6 guesses remaining.
Enter a number between 1 and 100: 25
Your guess is too low.

You have 5 guesses remaining.
Enter a number between 1 and 100: 37
Your guess is too high.

You have 4 guesses remaining.
Enter a number between 1 and 100: 31
Your guess is too low.

You have 3 guesses remaining.
Enter a number between 1 and 100: 34
Your guess is too high.

You have 2 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have 1 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low.

You have no more guesses. You lost!
=end

=begin
class GuessingGame
  MAX_GUESSES = 7
  RANGE = 1..100

  RESULT_OF_GUESS_MESSAGE = {
    high:  "Your number is too high.",
    low:   "Your number is too low.",
    match: "That's the number!"
  }.freeze

  WIN_OR_LOSE = {
    high:  :lose,
    low:   :lose,
    match: :win
  }.freeze

  RESULT_OF_GAME_MESSAGE = {
    win:  "You won!",
    lose: "You have no more guesses. You lost!"
  }.freeze

  def initialize
    @secret_number = nil
  end

  def play
    reset
    game_result = play_game
    display_game_end_message(game_result)
  end

  private

  def reset
    @secret_number = rand(RANGE)
  end

  def play_game
    result = nil
    MAX_GUESSES.downto(1) do |remaining_guesses|
      display_guesses_remaining(remaining_guesses)
      result = check_guess(obtain_one_guess)
      puts RESULT_OF_GUESS_MESSAGE[result]
      break if result == :match
    end
    WIN_OR_LOSE[result]
  end

  def display_guesses_remaining(remaining)
    puts
    if remaining == 1
      puts 'You have 1 guess remaining.'
    else
      puts "You have #{remaining} guesses remaining."
    end
  end

  def obtain_one_guess
    loop do
      print "Enter a number between #{RANGE.first} and #{RANGE.last}: "
      guess = gets.chomp.to_i
      return guess if RANGE.cover?(guess)
      print "Invalid guess. "
    end
  end

  def check_guess(guess_value)
    return :match if guess_value == @secret_number
    return :low if guess_value < @secret_number
    :high
  end

  def display_game_end_message(result)
    puts "", RESULT_OF_GAME_MESSAGE[result]
  end
end
=end