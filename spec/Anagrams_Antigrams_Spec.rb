require 'rspec'
require 'Anagrams_Antigrams'
require 'pry'


 describe("Anagram") do

  it("checks if two words are anagrams") do
    test_anagram = Anagram.new("weather", "wreathe")
    expect(test_anagram.anagram()).to(eq("These words are Anagrams"))
  end

  it("returns two words as anagrams reguardless of case") do
    test_anagram = Anagram.new("WEAther", "wreATHE")
    expect(test_anagram.anagram()).to(eq("These words are Anagrams"))
  end

  it("checks to see the anagrams are actual words") do
   test_anagram = Anagram.new("weather", "wthr")
   expect(test_anagram.anagram()).to(eq("You need to input actual words!"))
 end
end
