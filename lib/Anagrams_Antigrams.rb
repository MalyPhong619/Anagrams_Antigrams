require 'pry'

class Anagram
  def initialize(first_word, second_word)
    @word = first_word
    @word2 = second_word
  end
  def anagram()
      if (@word.downcase.split("").sort.join == @word2.downcase.split("").sort.join)
        return "These words are anagrams"
      else
        return "You need to input actual words!"
      end
    end

    def is_word?(word)
      word.split("")
      if(word =~ /[aeiou]/)
        return true
      else
        return false
      end
    end
  end
