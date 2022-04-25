require_relative 'translator'

class FileReader
attr_accessor :input,
              :output


  def initialize(input, output)
    @input = File.open(input, "r")
    @output = File.open(output, "w")
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
    capitalized = read_file.upcase
    @input.close
    @output.write(@translator.braille_rows(input))
    @output.close
    puts welcome_message(input, output)
  end
end
