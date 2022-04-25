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
    braille_sentence.transpose #each_slice(40).to_a
  end


  def braille_rows(sentence)
    braille_transposed = english_to_braille(sentence)
    row1 = braille_transposed[0].join
    row2 = braille_transposed[1].join
    row3 = braille_transposed[2].join
    braille = ("#{row1} \n#{row2}\n#{row3 }")
  end
end
