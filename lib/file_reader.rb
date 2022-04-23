class FileReader
attr_accessor :input,
              :output

  def initialize
    @input = ARGV[0]
    @output = ARGV[1]
  end
end
