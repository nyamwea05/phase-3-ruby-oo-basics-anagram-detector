# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word.downcase
  end

  def match(anagrams)
    anagrams.select { |anagram| anagram.downcase.chars.sort == word.chars.sort }
  end
end


listen = Anagram.new("listen")
matches = listen.match(%w[enlists google inlets banana])
puts matches.inspect
