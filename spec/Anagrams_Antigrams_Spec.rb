require 'rspec'
require 'Anagrams_Antigrams'
require 'pry'


describe("Anagram") do

  it("checks if two words are anagrams") do
    test_anagram = Anagram.new("weather", "wre athe")
    expect(test_anagram.anagram_antigram()).to(eq("These words are Anagrams"))
  end

  it("returns two words as anagrams reguardless of case") do
    test_anagram = Anagram.new("WEAther", "wreATHE")
    expect(test_anagram.anagram_antigram()).to(eq("These words are Anagrams"))
  end

  it("checks to see the anagrams are actual words") do
    test_anagram = Anagram.new("weather", "wthr")
    expect(test_anagram.anagram_antigram()).to(eq("You need to input actual words!"))
  end

  it("check to see if words are antigrams") do
    test_anagram = Anagram.new("abce", "cdeg")
    expect(test_anagram.anagram_antigram()).to(eq("These words are not anagrams but do contain c, e"))
  end

  it("deletes special character & check if words are antigrams or anagrams") do
    test_anagram = Anagram.new("weather!", "wreathe!!")
    expect(test_anagram.anagram_antigram()).to(eq("These words are Anagrams"))
  end

  it("will test multiple word sentences to see check if they're anagrams") do
    test_anagram = Anagram.new("the weatHER is cold!", "otherWISE latched!!")
    expect(test_anagram.anagram_antigram()).to(eq("These words are Anagrams"))
  end

  it("will test multiple word sentences to see check if they're anagrams") do
    test_anagram = Anagram.new("hey", "It's snowing outside!")
    expect(test_anagram.anagram_antigram()).to(eq("These words are not anagrams but do contain e"))
  end

end
