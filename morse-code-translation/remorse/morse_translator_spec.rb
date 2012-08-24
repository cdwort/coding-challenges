require 'morse_translator'

describe MorseTranslator, "#to_morse" do 
  it "returns nil if all characters are not in the morse alphabet"
    translator = MorseTranslator.new
    code = translator.to_morse("alksd-ads..")
    code.should eq(nil)
  end

  it "it returns the morse code for A when given A"
    translator = MorseTranslator.new
    code = translator.to_morse("A")
    code.should eq(".-")
  end
end
