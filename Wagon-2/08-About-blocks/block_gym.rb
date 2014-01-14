# Recoding inject iterator
# 1 - Refaire "inject"

def inject(array, initial_value)
	result = initial_value
	array.each do |val|
		result = yield(result, val) 
	end
	result
end

puts inject(1..100, 0) { |accum, element| element + accum } == 5050 # true

puts inject(1..4, 1) { |accum, element| element * accum } # => 24 

# 2 - Pour être sûr que j'ai bien compris
def times(n)
	array = (1..n)
	array.each do |val|
		yield(val)
	end
end

times(5) { |i| puts i }
# 1
# 2
# ...
# 5

# 3 - Block timer

def timer_for
  process_beg = Time.now
  yield
  process_end = Time.now 
  print "action executed in #{process_end - process_beg} seconds"
end

timer_for do 
  (1..100).each { |i| (1..100000).to_a.shuffle.sort }
end

# Should return around 2-3 seconds