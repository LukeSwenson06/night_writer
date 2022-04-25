require_relative 'english_to_braille_dictionary'

class Translator < EnglishToBrailleDictionary

  def english_dictionary
    super
  end

  def english_to_braille_top(letter)
    if letter == " "
      ".."
    else
      english_dictionary[letter][:top]
    end
  end

  def english_to_braille_middle(letter)
    if letter == " "
      ".."
    else
      english_dictionary[letter][:middle]
    end
  end

  def english_to_braille_bottom(letter)
    if letter == " "
      ".."
    else
      english_dictionary[letter][:bottom]
    end
  end

  def braille_rows(letter)
    row1 = english_to_braille_top(letter)
    row2 = english_to_braille_middle(letter)
    row3 = english_to_braille_bottom(letter)
    braille_character = ("#{row1} \n" "#{row2} \n" "#{row3}")
  end

  def english_to_braille(word)
    braille_sentence = []
    word.chars.each do |letter|
      braille_sentence << braille_rows(letter)
    end
    braille_sentence.join
  end
end

this is a test
