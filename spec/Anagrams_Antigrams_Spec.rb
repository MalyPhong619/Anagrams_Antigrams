require 'rspec'
require 'Anagrams_Antigrams'


 describe("#anagram") do

  it("checks if two words are anagrams") do
    test_anagram = Anagram_And_Antigram.new("weather")
    expect(test_anagram.anagram("wreathe")).to(eq("These words are anagrams"))
  end

  it("returns two words as anagrams reguardless of case") do
    test_anagram = Anagram_And_Antigram.new("WEAther")
    expect(test_anagram.anagram("wreaTHE")).to(eq("These words are anagrams"))
  end

  it("checks to see the anagrams are actual words") do
   test_anagram = Anagram_And_Antigram.new("hmp")
   expect(test_anagram.anagram("mph")).to(eq("You need to input actual words!"))
 end
end
