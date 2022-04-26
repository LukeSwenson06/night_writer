require 'simplecov'
SimpleCov.start
require './lib/file_reader'

RSpec.describe FileReader do
  before :each do
    @file_reader = FileReader.new("tester.txt", "braille.txt")
    @translator = Translator.new
  end

  it 'exists' do
    expect(@file_reader).to be_a(FileReader)
    expect(@translator).to be_a(Translator)
  end

  it "can open and read the file" do
    expect(@file_reader.read).to eq('hello this is a message from the water authority')

  end

  it "can read character count" do
    expect(@file_reader.character_count("tester.txt")).to eq(49)

  end

  it 'has a welcome message' do
    expect(@file_reader.welcome_message("tester.txt","braille.txt")).to eq("Created braille.txt containing 49 characters")
  end

  it "runs the script of nightwriter" do
    expect(@file_reader.start("tester.txt", "braille.txt")).to eq(nil)#"Created braille.txt containing 49 characters"

  end
end
