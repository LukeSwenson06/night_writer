require_relative 'file_reader'

nightwriter = FileReader.new(ARGV[0], ARGV[1])
nightwriter.start(ARGV[0], ARGV[1])
