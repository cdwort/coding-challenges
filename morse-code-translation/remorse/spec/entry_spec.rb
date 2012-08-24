require 'entry'

describe Entry, "#english" do
  it "has no english definition when initialized" do 
    entry = Entry.new
    entry.english.should eq("")
  end
end

describe Entry, "#morse" do
  it "has no morse code when initialized" do 
    entry = Entry.new
    entry.english.should eq("")
  end
end 
