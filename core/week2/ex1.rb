=begin

  Exercise1. Write a program that processes the string s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at a time, using all that we have learned so far. The expected output is:

  >ruby tmp.rb
  Line 1: Welcome to the forum.
  Line 2: Here you can learn Ruby.
  Line 3: Along with other members.
  >Exit code: 0
	
=end

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

s.lines.inject(1) do |line_number, text| 
  puts "Line #{line_number}: #{text}" 
  line_number.next
end

# Or
s.lines.inject(1) { |line_number, text| puts "Line #{line_number}: #{text}"; line_number.next}

# Or
s.split("\n").each_with_index { |text, line_number| puts "Line #{line_number.next}: #{text}" }

# Or
s.each_line.with_index(1) { |text, line_number| puts "Line #{line_number}: #{text}" }
