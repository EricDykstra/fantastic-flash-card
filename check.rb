require 'fuzzystringmatch'

module Check
  def check(guess, answer)
    jaronumber = FuzzyStringMatch::JaroWinkler.create(:pure)
    distance = jaronumber.getDistance(guess, answer)
    distance > 0.7 ? true : false
  end
end

class Test
  include Check
  attr_accessor :guess, :answer

  def initialize
    @guess = guess
    @answer = answer
  end

end

test = Test.new
p test.check('chris', 'chrix')