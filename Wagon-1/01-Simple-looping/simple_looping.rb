# The objective is to create a function that computes the sum of the integers from a min value to a max value

def sum(min, max)
	res = 0
	for n in min..max 
		res += n
	end
	res
end

def sum2(min, max)
	res = 0
	n = min
	while n <= max
		res += n
		n += 1
	end
	res
end

def sum3(min, max)
	(max * (max + 1) - min * (min - 1)) / 2
end

# Testing your code

min = 1
max = 100
puts sum(min, max) == 5050 # => true for the for method
puts sum2(min, max) == 5050  # => true for the while method
puts sum3(min, max) == 5050 # => true for the recursive method