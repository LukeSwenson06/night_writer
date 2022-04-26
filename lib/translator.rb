require_relative 'english_to_braille_dictionary'

class Translator < EnglishToBrailleDictionary

  def translate_braille(letter)
    empty_array = []
    if english_dictionary.include?(letter)
      empty_array << english_dictionary[letter][:top]
      empty_array << english_dictionary[letter][:middle]
      empty_array << english_dictionary[letter][:bottom]
    end
  end

  def english_to_braille(word)
    braille_sentence = []
    word.chars.each do |letter|
      braille_sentence << translate_braille(letter)
    end
    braille_sentence.each_slice(40).to_a
  end

  def braille_transposed(sentence)
    braille = english_to_braille(sentence)
    transposed_braille = []
    braille.each do |sentence|
       transposed_braille << sentence.transpose
    end
    transposed_braille
  end
end
