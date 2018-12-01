require 'pry'

class Anagram

  def initialize(first_word, second_word)
    @word = first_word
    @word2 = second_word
  end

  def anagram()
    if((is_word?(@word)) && (is_word?(@word2)))
      if (@word.downcase.split("").sort.join == @word2.downcase.split("").sort.join)
        return "These words are anagrams"
      else
        return "You need to input actual words!"
      end
    end
  end

  def is_word?(word)
    if(word =~ /[aeiou]/)
      return true
    else
      return "You need to input actual words!"
    end
  end
end
