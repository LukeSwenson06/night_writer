require 'simplecov'
SimpleCov.start
require './lib/file_reader'

RSpec.describe FileReader do
  before :each do
    @file_reader = FileReader.new("message.txt", "braille.txt")
  end

  it 'exists' do
    expect(@file_reader).to be_a(FileReader)
  end

  it "can open and read the file" do
    expect(@file_reader.read).to eq('hello this is a message from the water authority')

  end

  it "can read character count" do
    expect(@file_reader.character_count("message.txt")).to eq(49)

  end

  it 'has a welcome message' do
    expect(@file_reader.welcome_message("message.txt","braille.txt")).to eq("Created braille.txt containing 49 characters")
  end

  it "can close the file" do
    @file_reader.read
    expect(@file_reader.close("message.txt")).to eq(nil)

  end

  # it "can write into the file" do
  #   expect(@file_reader.write("braille.txt")).to eq("HELLO THIS IS A MESSAGE FROM THE WATER AUTHORITY")
  end
# end
