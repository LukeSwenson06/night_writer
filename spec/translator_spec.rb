require 'simplecov'
SimpleCov.start
require './lib/english_to_braille_dictionary'
require './lib/translator'

describe Translator do
  before :each do
    @translator = Translator.new
  end

  it "exists" do
    expect(@translator).to be_a(Translator)

  end
end
