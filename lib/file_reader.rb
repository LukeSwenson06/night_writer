class FileReader
attr_reader :input,
            :output
  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
  end
end
