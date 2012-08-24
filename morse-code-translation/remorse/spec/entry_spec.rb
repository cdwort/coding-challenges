require 'entry'

describe Entry, "#initialize" do
  it "has word and definition when initialized" do 
    entry = Entry.new(".-","a")
    entry.definition.should eq("a")
    entry.word.should eq(".-")
  end
end 

describe Entry, "#add_definition" do
  it "adds a defintion with a new line delimiter" do
    entry = Entry.new(".-","a")
    entry.add_definition("b")
    entry.definition.should eq("a\nb")
  end
end
