require 'rspec'
require 'Anagrams_Antigrams'


 describe("Word#anagram") do
  it("check if two words are anagrams and return string with result") do
    test_anagram = Anagram_And_Antigram.new("weather")
    expect(test_anagram.anagram("wreathe")).to(eq("These words are anagrams"))
  end
end
