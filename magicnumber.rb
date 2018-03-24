require 'numbers_in_words'

def menu
  puts 'Enter a number.'
  choice = gets.strip.to_i
  magic(choice)
end

def magic(choice)
  word = NumbersInWords.in_words(choice)
  number = word.split('').length
  case number
    when 4
      puts "#{choice} is #{number},"
      puts 'and 4 is the magic number.'
    else
      puts "#{choice} is #{number},"
      magic(number)
  end
end

menu
