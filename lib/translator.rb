require_relative 'english_to_braille_dictionary'

class Translator < EnglishToBrailleDictionary

  def english_dictionary
    super
  end

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
    braille_sentence
  end
end
