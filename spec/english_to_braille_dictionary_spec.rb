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
        'a' => {top: 'O.', middle: '..', bottom: '..'},
        'b' => {top: 'O.', middle: 'O.', bottom: '..'},
        'c' => {top: 'OO', middle: '..', bottom: '..'},
        'd' => {top: 'OO', middle: '.O', bottom: '..'},
        'e' => {top: 'O.', middle: '.O', bottom: '..'},
        'f' => {top: 'OO', middle: 'O.', bottom: '..'},
        'g' => {top: 'OO', middle: 'OO', bottom: '..'},
        'h' => {top: 'O.', middle: 'OO', bottom: '..'},
        'i' => {top: '.O', middle: 'O.', bottom: '..'},
        'j' => {top: '.O', middle: 'OO', bottom: '..'},
        'k' => {top: 'O.', middle: '..', bottom: 'O.'},
        'l' => {top: 'O.', middle: 'O.', bottom: 'O.'},
        'm' => {top: 'OO', middle: '..', bottom: 'O.'},
        'n' => {top: 'OO', middle: '.O', bottom: 'O.'},
        'o' => {top: 'O.', middle: '.O', bottom: 'O.'},
        'p' => {top: 'OO', middle: 'O.', bottom: 'O.'},
        'q' => {top: 'OO', middle: 'OO', bottom: 'O.'},
        'r' => {top: 'O.', middle: 'OO', bottom: 'O.'},
        's' => {top: '.O', middle: 'O.', bottom: 'O.'},
        't' => {top: '.O', middle: 'OO', bottom: 'O.'},
        'u' => {top: 'O.', middle: '..', bottom: 'OO'},
        'v' => {top: 'O.', middle: 'O.', bottom: 'OO'},
        'w' => {top: '.O', middle: 'OO', bottom: '.O'},
        'x' => {top: 'OO', middle: '..', bottom: 'OO'},
        'y' => {top: 'OO', middle: '.O', bottom: 'OO'},
        'z' => {top: 'O.', middle: '.O', bottom: 'OO'},
        ' '  =>{top: '..', middle: '..', bottom: '..'}
}
    expect(@english_to_braille.english_dictionary).to eq(expected)

  end
end
