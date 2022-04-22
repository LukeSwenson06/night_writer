
file_reader = File.open(ARGV[0], "r")
message_reader = file_reader.read
file_reader.close

puts message_reader
capitalized = message_reader.upcase

writer = File.open(ARGV[1], "w")
writer.write(capitalized)
writer.close
