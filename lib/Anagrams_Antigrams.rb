class Anagram_And_Antigram
  def initialize(word)
    @word = word
  end
   def anagram(word2)
    if (@word.downcase.split("").sort.join == word2.downcase.split("").sort.join)
      return "These words are anagrams"
    else
      return "These words are not anagrams"
    end
  end
end
