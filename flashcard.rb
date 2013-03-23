# Tom and Carolyn Flashcards
class Card
  def initialize(question, answer)
    @question = question
    @answer = answer
  end 
end


class Deck
  def initialize
    @cards = FileUtilities::file_reader #our text file will go here
    @current = nil
  end

  def draw_card
    @current = @cards.pop
  end

  def shuffle
    @cards.shuffle
  end

end

module FileUtilities

  def self.file_reader
    questions = []
    answers = []
    File.open('flashcard_samples.txt', 'r').each_with_index do |line, i|
      if i % 3 == 0 
        questions << line.gsub(/\n/, "")
      end
      if i % 3 == 1
        answers << line.gsub(/\n/, "")
      end
    end 
    array_of_cards = []
    questions.each_with_index do |q,i|
      array_of_cards << Card.new(questions[i], answers[i])
    end
    array_of_cards
  end
end
