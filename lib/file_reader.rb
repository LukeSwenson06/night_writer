require_relative 'translator'
require_relative 'english_to_braille_dictionary'

class FileReader 
attr_accessor :input,
              :output,
              :translator

  def initialize(input, output)
    @input = File.open(input, "r")
    @output = File.open(output, "w")
    @translator = Translator.new
  end

  def read
    @input.read.strip
  end

  def character_count(input)
    lines = File.readlines(input)
    text = lines.join
    text.length
  end

  def welcome_message(input, output)
   "Created #{output} containing #{character_count(input)} characters"
  end

  def start(input, output)
    read_file = read
    @input.close
    @output.write(@translator.braille_rows(read_file))
    @output.close
    puts welcome_message(input, output)
  end
end
