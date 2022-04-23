require 'simplecov'
SimpleCov.start
require './lib/english_to_braille_dictionary'

describe EnglishToBrailleDictionary do
  before :each do
  @english_to_braille = EnglishToBrailleDictionary.new
  end

  it "exists" do
    expect(@english_to_braille).to be_a(EnglishToBrailleDictionary)

  end
end
