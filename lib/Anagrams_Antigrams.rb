require 'pry'

class Anagram

  def initialize(first_word, second_word)
    @word = first_word
    @word2 = second_word
  end

  def anagram_antigram()
    if((is_word?(@word)) && (is_word?(@word2)))
      if(is_anagram?(@word, @word2))
        return "These words are Anagrams"
      elsif (is_antigram?(@word, @word2))
        return "These words are Antigrams!"
      end
    else
      return "You need to input actual words!"
    end
  end

  def is_anagram?(first_word, second_word)
    if (first_word.downcase.split("").sort.join == second_word.downcase.split("").sort.join)
      return true
    end
  end

  def is_word?(word)
    if(word =~ /[aeiou]/)
      return true
    end
  end

  def is_antigram?(first_word, second_word)
    if first_word.split("") != second_word.split("")
      return true
    end
  end
end
