require 'morse.rb'

describe Morse, "#to_morse" do 
  it "returns an empty string if given one" do
    code = Morse.to_morse("")
    code.should eq("")
  end
  it "strips all characters not in the morse alphabet" do
    code = Morse.to_morse("alksd-ads..")
    code.should eq(".-.-..-.-...-...--.....")
  end

  it "it returns the morse code for A when given A" do
    code = Morse.to_morse("A")
    code.should eq(".-")
  end
end
