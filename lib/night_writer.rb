file_reader = File.open(ARGV[0], "r")
message_reader = file_reader.read
file_reader.close


capitalized = message_reader.upcase
#
writer = File.open(ARGV[1], "w")
writer.write(capitalized)
writer.close

lines = File.readlines("message.txt")
text = lines.join
total_characters = text.length
puts "#{total_characters} characters"

puts "Created #{ARGV[1]} containing #{total_characters} characters"
