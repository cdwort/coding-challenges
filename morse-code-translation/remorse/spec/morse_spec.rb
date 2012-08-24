require 'morse.rb'

describe Morse, "#to_morse" do 
  it "returns nil if all characters are not in the morse alphabet" do
    code = Morse.to_morse("alksd-ads..")
    code.should eq(nil)
  end

  it "it returns the morse code for A when given A" do
    code = Morse.to_morse("A")
    code.should eq(".-")
  end
end
