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

  it "has english has keys and braille as values" do
    expected = {
      'a' => ['O.', '..', '..'],
      'b' => ['O.', 'O.', '..'],
      'c' => ['OO', '..', '..'],
      'd' => ['OO', '.O', '..'],
      'e' => ['O.', '.O', '..'],
      'f' => ['OO', 'O.', '..'],
      'g' => ['OO', 'OO', '..'],
      'h' => ['O.', 'OO', '..'],
      'i' => ['.O', 'O.', '..'],
      'j' => ['.O', 'OO', '..'],
      'k' => ['O.', '..', 'O.'],
      'l' => ['O.', 'O.', 'O.'],
      'm' => ['OO', '..', 'O.'],
      'n' => ['OO', '.O', 'O.'],
      'o' => ['O.', '.O', 'O.'],
      'p' => ['OO', 'O.', 'O.'],
      'q' => ['OO', 'OO', 'O.'],
      'r' => ['O.', 'OO', 'O.'],
      's' => ['.O', 'O.', 'O.'],
      't' => ['.O', 'OO', 'O.'],
      'u' => ['O.', '..', 'OO'],
      'v' => ['O.', 'O.', 'OO'],
      'w' => ['.O', 'OO', '.O'],
      'x' => ['OO', '..', 'OO'],
      'y' => ['OO', '.O', 'OO'],
      'z' => ['O.', '.O', 'OO']
}
    expect(@english_to_braille.english_dictionary).to eq(expected)

  end
end
