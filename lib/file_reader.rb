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
end
