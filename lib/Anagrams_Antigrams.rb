require 'rspec'
require 'pry'

class Anagram

  def initialize(first_word, second_word)
    @word = first_word
    @word2 = second_word
  end

  def anagram_antigram()
    gsub_word1 = @word.gsub(/[^a-zA-Z]/, "")
    gsub_word2 = @word2.gsub(/[^a-zA-Z]/, "")

    if((is_word?(gsub_word1)) && (is_word?(gsub_word2)))
      if(is_anagram?(gsub_word1, gsub_word2))
        "These words are Anagrams"
      else is_antigram?
      end
    else
      "You need to input actual words!"
    end
  end

  def is_anagram?(first_word, second_word)
    (first_word.downcase.split("").sort.join == (second_word.downcase.split("").sort.join))
  end

  def is_word?(word)
    (word =~ /[aeiou]/)
  end

  def is_antigram?
    @cross_word = @word.split("") & @word2.split("")
    if @cross_word.length > 0
      result = @cross_word.join(", ")
      "These words are not anagrams but do contain " + result
    end
  end

end
