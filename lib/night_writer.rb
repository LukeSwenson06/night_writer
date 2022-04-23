require_relative 'file_reader'
# file_reader = File.open(ARGV[0], "r")
# message_reader = file_reader.read
# file_reader.close
#
# #
# writer = File.open(ARGV[1], "w")
# writer.write(capitalized)
# writer.close
nightwriter = FileReader.new(ARGV[0], ARGV[1])
nightwriter.start(ARGV[0], ARGV[1])
