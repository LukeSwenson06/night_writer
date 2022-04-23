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

  it "has attributes" do
    expect(@file_reader.input).to eq(ARGV[0])
    expect(@file_reader.output).to eq(ARGV[1])

  end

  it "can open and read the file" do
    @file_reader = File.open("message.txt", "r")
    expect(@file_reader.read).to eq('hello this is a message from the water authority')


  end
end
