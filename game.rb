class Game
  attr_reader :display_question, :response
  include Check

  def initialize
    display_question
    @guess_count = 0
    @user_input = ""
  end

  def display_question
    puts "Our cohort name?" #Deck.first_card.Question
  end

  def response(user_input)  #make guess
      
    until @guess_count == 3
      @user_input = gets.chomp
      if check(@user_input, "Bears") #deck.first_card.answer
        puts "Correct!"
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

p new_game.response("Bears")

# p new_game.guesses_left?




