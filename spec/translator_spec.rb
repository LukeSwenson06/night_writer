require 'simplecov'
SimpleCov.start
require './lib/english_to_braille_dictionary'
require './lib/translator'

describe Translator do
  before :each do
    @translator = Translator.new
  end

  it "exists" do
    expect(@translator).to be_a(Translator)

  end
  it "has inherited english dictionary from the EnglishtoBrailleDictionary class" do
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
    expect(@translator.english_dictionary).to eq(expected)
  end

  it "can call right key to the hash given the right arguement" do
    expect(@translator.translate_braille('a')).to eq(['O.','..','..'])
    expect(@translator.translate_braille('A')).to eq(['O.','..','..'])
  end

  it "can create multiple characters out of words and split the at 40 characters" do
    expect(@translator.english_to_braille('hello')).to eq([[["O.", "OO", ".."], ["O.", ".O", ".."], ["O.", "O.", "O."], ["O.", "O.", "O."], ["O.", ".O", "O."]]])
    expect(@translator.english_to_braille("hello my name is bob and i like cookies a lot of cookies")).to be_a(Array)
    end

  it "it can transpose all the arrays" do
      expect(@translator.braille_transposed("hello my name is bob and i like cookies a lot of cookies")).
      to eq([[["O.", "O.", "O.", "O.", "O.", "..", "OO", "OO", "..", "OO", "O.", "OO", "O.", "..", ".O", ".O", "..", "O.", "O.", "O.", "..", "O.", "OO", "OO", "..", ".O", "..", "O.", ".O", "O.", "O.", "..", "OO", "O.", "O.", "O.", ".O", "O.", ".O", ".."],
  ["OO", ".O", "O.", "O.", ".O", "..", "..", ".O", "..", ".O", "..", "..", ".O", "..", "O.", "O.", "..", "O.", ".O", "O.", "..", "..", ".O", ".O", "..", "O.", "..", "O.", "O.", "..", ".O", "..", "..", ".O", ".O", "..", "O.", ".O", "O.", ".."],
  ["..", "..", "O.", "O.", "O.", "..", "O.", "OO", "..", "O.", "..", "O.", "..", "..", "..", "O.", "..", "..", "O.", "..", "..", "..", "O.", "..", "..", "..", "..", "O.", "..", "O.", "..", "..", "..", "O.", "O.", "O.", "..", "..", "O.", ".."]],
 [["O.", "..", "O.", "O.", ".O", "..", "O.", "OO", "..", "OO", "O.", "O.", "O.", ".O", "O.", ".O"],
  ["..", "..", "O.", ".O", "OO", "..", ".O", "O.", "..", "..", ".O", ".O", "..", "O.", ".O", "O."],
  ["..", "..", "O.", "O.", "O.", "..", "O.", "..", "..", "..", "O.", "O.", "O.", "..", "..", "O."]]])

  end

  it "can put all braille into a row" do
      expect(@translator.braille_rows("hello my name is bob and i like cookies a lot of cookies")).to be_a(Array)
    end

  it "can split all the braille " do
    expect(@translator.braille_split("hello my name is bob and i like cookies a lot of cookies")).
    to eq(["O.O.O.O.O...OOOO..OOO.OOO....O.O..O.O.O...O.OOOO...O..O..OO.O...OOO.O.O..OO..O..",
      "OO.OO.O..O.....O...O.....O..O.O...O..OO......O.O..O...O.O....O.....O.O..O..OO...",
      "....O.O.O...O.OO..O...O.......O.....O.......O.........O...O.......O.O.O.....O...",
      "O...O.O..O..O.OO..OOO.O.O..OO..O",
      "....O..OOO...OO......O.O..O..OO.",
      "....O.O.O...O.......O.O.O.....O."]
  )
  end

  it "can output braille properly formatted" do
    expect(@translator.finished_braille("hello my name is bob and i like cookies a lot of cookies")).
    to eq("O.O.O.O.O...OOOO..OOO.OOO....O.O..O.O.O...O.OOOO...O..O..OO.O...OOO.O.O..OO..O..\nOO.OO.O..O.....O...O.....O..O.O...O..OO......O.O..O...O.O....O.....O.O..O..OO...\n....O.O.O...O.OO..O...O.......O.....O.......O.........O...O.......O.O.O.....O...\nO...O.O..O..O.OO..OOO.O.O..OO..O\n....O..OOO...OO......O.O..O..OO.\n....O.O.O...O.......O.O.O.....O.\n")

  end
end
