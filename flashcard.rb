# Tom and Carolyn Flashcards
class Card
  def initialize(question, answer)
    @question = question
    @answer = answer
  end 
end


class Deck

  def initialize
    @cards = [] #our text file will go here
    @current = nil
  end

  def draw_card
    @current = @cards.pop
  end

  def shuffle
    @cards.shuffle
  end

end


