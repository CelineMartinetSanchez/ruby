# your code goes here, introduce yourself !

puts 'What\'s your first name?'
first_name = gets.chomp

puts 'What\'s your middle name?'
middle_name = gets.chomp

puts 'What\'s your last name?'
last_name = gets.chomp

length = (first_name.length + middle_name.length + last_name.length)

puts "Hi #{first_name} #{middle_name} #{last_name}! You have #{length} characters in your name."

puts 'Your\'re a good person!' unless (last_name.empty? || middle_name.empty? || last_name.empty?)