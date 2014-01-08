
def old_roman_numeral(an_integer)
  n_m, rm = (an_integer / 1000), (an_integer % 1000)
  n_d, rd = (rm / 500), (rm % 500)
  n_c, rc = (rd / 100), (rd % 100)
  n_l, rl = (rc / 50), (rc % 50)	
  n_x, rx = (rl / 10), (rl % 10)
  n_v, rv = (rx / 5), (rx % 5)
  n_i = rv / 1

  puts ("M" * n_m) + ("D" * n_d) + ("C" * n_c) + ("L" * n_l) + ("X" * n_x) + ("V" * n_v) + ("I" * n_i)

end

puts "My nice roman numeral tests"
puts "What's your number?"
an_integer = gets.chomp
# Write a nice testing script herebelow !
puts old_roman_numeral(an_integer.to_i)


=begin
def roman_numeral(an_integer)
  #your code goese here for the new-style version
end
=end