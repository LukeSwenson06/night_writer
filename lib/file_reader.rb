class FileReader
attr_accessor :input,
              :output

  def initialize(input, output)
    @input = ARGV[0]
    @output = ARGV[1]
  end

  def read(input)
    file_reader = File.open(input, "r")
    file_reader.read.chomp
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
      file_reader = File.open(input, "r")
      file_reader.close
  end
end
