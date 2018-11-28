class Anagram_And_Antigram
  def initialize(word)
    @word = word
  end
  def anagram(word2)
    if(is_word?(@word) && is_word?(word2))
      if (@word.downcase.split("").sort.join == word2.downcase.split("").sort.join)
        return "These words are anagrams"
      else
        return "You need to input actual words!"
      end
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
