require File.dirname(__FILE__) + '/morse.rb'
require File.dirname(__FILE__) + '/entry.rb'

class Dictionary

  @file_name  # File to build Dictionary from
  @chapters   # Sections of dictionary, defined by length of word
  @max_word_len  # Length of longest word
  NOT_FOUND_MESSAGE="Sorry, the word you requested was not found."

  def initialize(file_name)
    @file_name=file_name
    @chapters=Array.new
    @max_word_len=0
    build_index
  end

  def lookup(word)

    if word.length > @max_word_len
      puts NOT_FOUND_MESSAGE
    elsif @chapters[word.length] == nil
      puts NOT_FOUND_MESSSAGE
    else

      entry = @chapters[word.length][word]
      if entry == nil
        puts NOT_FOUND_MESSAGE
      else
        puts entry.definition
      end

    end
  end

  protected

  def build_index
    words_file = File.open(@file_name)

    words_file.each_line do |line|
      morse_word = Morse.to_morse(line.strip)

      if morse_word.length > @max_word_len
        @max_word_len=morse_word.length
      end
      if @chapters[morse_word.length] == nil
        new_chapter=Hash.new
        new_chapter[morse_word]=get_new_entry(line)
        @chapters[morse_word.length]=new_chapter
      else
        if @chapters[morse_word.length][morse_word] == nil
          @chapters[morse_word.length][morse_word]=get_new_entry(line)
        else
          @chapters[morse_word.length][morse_word].add_definition(line.strip)
        end
      end

    end
  end

  def get_new_entry(line)

    english_word = line.strip
    morse_word = Morse.to_morse(english_word)
    entry = Entry.new(morse_word, english_word)
    
    entry
  end


end
