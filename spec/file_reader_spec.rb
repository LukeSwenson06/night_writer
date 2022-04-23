require './lib/file_reader'

RSpec.describe FileReader do
  before :each do
    @file_reader = FileReader.new
  end

  it 'exists' do
    expect(@file_reader).to be_a(FileReader)
end

  it 'has attributes' do
expect(@file_reader.input).to eq(ARGV[0])
expect(@file_reader.output).to eq(ARGV[1])

end

end
