require 'fuzzystringmatch'

module Check
  def check(guess, answer)
    jaronumber = FuzzyStringMatch::JaroWinkler.create(:pure)
    distance = jaronumber.getDistance(guess.downcase, answer.downcase)
    distance > 0.8 ? true : false
  end
end
