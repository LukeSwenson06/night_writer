require_relative 'english_to_braille_dictionary'

class Translator < EnglishToBrailleDictionary
  def initialize
  end

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
end
