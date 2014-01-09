

def is_not_nuggets(all_numbers)
		a = 6
		b = 9
		c = 20
		all_numbers.find_all {|x| (x % a != 0 && x % b != 0 && x % c != 0)}
		all_numbers.find_all {|x| (x % (a + b) != 0) && x % (a + c) == 0 && x % (b + c) == 0}
end

numbers = %w(1..10000)

puts is_not_nuggets(1..10000)
