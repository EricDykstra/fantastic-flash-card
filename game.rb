require_relative 'check' 
require_relative 'flashcard'

class Game
  attr_reader :display_question, :response
  include Check

  def initialize
    @deck = Deck.new
    @guess_count = 0
    @user_input = ""
    game_loop
  end

  def game_loop
    display_question
    response
    game_loop
  end

  def display_question
    @current = @deck.draw_card
    puts @current.question
  end

  def response  #make guess
    @guess_count = 0
    until @guess_count == 3
      @user_input = gets.chomp
      exit if @user_input.downcase == "quit"
      if check(@user_input, @current.answer) #deck.first_card.answer
        puts "Correct!"
        break
      else        
        @guess_count += 1
        puts "Incorrect answer!  You have  #{guesses_left?} guesses remaining.  Guess again:"
      end  
    end
  end

  # def keep_score
    
  #   #if check(from module) == true
  #     # score(from module) + 1
  #   # else
  #     # 0
  #   # end

  def guesses_left?
    3.to_i - @guess_count
  end
  
end



new_game = Game.new

# p new_game.response()

# p new_game.guesses_left?




