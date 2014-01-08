
def shuffle(array)
	old = array.clone
	rand_array = []

	until old.length == 0
	  random_number = rand(old.length)
	  rand_array << old[random_number]
	  old.delete_at(random_number)
	end
	rand_array
end


def shuffle2(array)
  array.sort_by {|x| rand}
end

# Testing your shuffle algorithm
#p shuffle(sorted_array) != shuffle(sorted_array) # => true
#p shuffle2(sorted_array) != shuffle2(sorted_array) # => true
#p shuffle2(sorted_array)
sorted_array = (1..10).to_a

p shuffle(sorted_array)
p shuffle2(sorted_array)