require 'fuzzystringmatch'

module Check
  def check(guess, answer)
    jaronumber = FuzzyStringMatch::JaroWinkler.create(:pure)
    distance = jaronumber.getDistance(guess, answer)
    distance > 0.7 ? true : false
  end
end