Coding Challenge Battle against ambiguity in Morse code
========================================================

This problem was adapted from the 2007 ACM South American Programming Contest.  It has been utilized on a few online quiz sites as well.

Solve this challenge and earn a Software Development Engineering interview with Litle & Co., we are looking for talented engineers.  You can find out more about Litle <a href="www.litle.com">here</a>.

Problem
-------

[Morse Code](http//en.wikipedia.org/Morse_code) is a means of encoding telegraphic messages as a series of long and short sounds or visual signals. During transmission, pauses are used to group letters and words.  However in written form morse code can be ambiguous.

For example, using the typical dot (.) and dash (-) for a written representation of morse code, the word ...---..-....- could be an encoding of the names Sofia or Eugenia depending on where you break up the letters

Example using '|' character as a separator
...|---|..-.|..|.-    Sofia
.|..-|--.|.|-.|..|.-  Eugenia

This challenge is to write a program that displays all possible translations for any ambiguous words provided in the Morse code representation.

Your program will be passed a word of Morse code on STDIN. Your program should print all possible translations of the code to STDOUT, one translation per line. Your code should only print translations that can be found in the dictionary.

We will only focus on the english alphabet for this challenge. Here are the encodings for each letter

A => '.-', B => '-...', C => '-.-.',
D => '-..', E => '.', F => '..-.', G => '--.',
H => '....', I => '..', J => '.---', K => '-.-',
L => '.-..', M => '--', N => '-.', O => '---',
P => '.--.', Q => '--.-', R => '.-.', S => '...',
T => '-', U => '..-', V => '...-', W => '.--',
X => '-..-', Y => '-.--', Z => '--..'

Participation
-------------

A dictionary file has been provided for consistency, the file is called 'words'.  Please use this file in your solution.

To participate in this challenge fork this repository on Github, implement your solution and submit a pull request containing your solution.  A test suite is being developed and will be online shortly for testing your solutions.

Sample input ".--....-..."
Output
 abets
 able
 adele
 pile
 wests

Ensure you create a README file that shows how to execute your code submission.  A general overview of your solution would be great, along with any dependencies required by your solution.

If you enjoy working with talented people on challenging problems like this, email your résumé to <a href="mailtohr_resumes@litle.com">hr_resumes@litle.com</a>.

Good luck!