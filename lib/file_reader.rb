class FileReader
attr_accessor :input,
              :output

  def initialize(input, output)
    @input = File.open(input, "r")
    @output = File.open(output, "w")
  end

  def read
    @input.read.chomp
  end

  def character_count(input)
    lines = File.readlines(input)
    text = lines.join
    text.length
  end

  def welcome_message(input, output)
   "Created #{output} containing #{character_count(input)} characters"
  end

  def close(input)
      @output.close
  end
  #
  # def write(output)
  #     file_reader = File.open(output, "w")
end
