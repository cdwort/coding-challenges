class Morse

  def self.to_morse(english_word)
    morse_word = String.new
    letters = { 
            'A' => '.-', 'B' => '-...', 'C' => '-.-.',
            'D' => '-..', 'E' => '.', 'F' => '..-.', 'G' => '--.',
            'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-',
            'L' => '.-..','M' => '--', 'N' => '-.', 'O' => '---',
            'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...',
            'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--',
            'X' => '-..-', 'Y' => '-.--', 'Z' => '--..'
              }

    check(english_word)
    
    english_word.each_char do |l|
      morse_word << letters[l.upcase]
    end

    morse_word
  end

  def self.check(english_word)
    english_word.gsub!(/[^A-Za-z]/, '')
  end
end
