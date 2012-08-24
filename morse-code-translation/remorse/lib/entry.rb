class Entry 
  attr_reader :word
  attr_reader :definition

  def initialize(new_word, new_def)
    @word=new_word
    @definition=new_def
  end

  def add_definition(new_def) 
    if @definition == ""
       @definition = new_def
    else
       @definition << "\n" + new_def
    end
  end
end
