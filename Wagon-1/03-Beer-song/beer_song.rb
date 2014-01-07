def beersong(nb_at_start)
	n = nb_at_start.to_i
	bottle_a = n > 1 ? "bottles" : "bottle"
	bottle_b = n == 2 ? "bottle" : "bottles"
	
		until n == 1
			puts "#{n} #{bottle_a} of beer on the wall, #{n} #{bottle_a} of beer!"
			puts "Take one down, pass it around, #{n - 1} #{bottle_b} of beer on the wall!"
			n -= 1
		end
			
		if n==1
			puts "#{n} #{bottle_a} beer on the wall, #{n} #{bottle_a} of beer."
			puts "Take one down and pass it around, no more bottles of beer on the wall."
			n -= 1
		end

		if n == 0
			puts "No more bottles of beer on the wall, no more bottles of beer."
			puts "Go to the store and buy some more, 99 bottles of beer on the wall."
			
		end

end

beersong( ARGV[0] )

# output (if called with 5 beers) :

# => 5 bottles of beer on the wall, 5 bottles of beer!
# => Take one down, pass it around, 4 bottles of beer on the wall!
# => 4 bottles of beer on the wall, 4 bottles of beer!
# => Take one down, pass it around, 3 bottles of beer on the wall!
# => 3 bottles of beer on the wall, 3 bottles of beer!
# => Take one down, pass it around, 2 bottles of beer on the wall!
# => 2 bottles of beer on the wall, 2 bottles of beer!
# => Take one down, pass it around, 1 bottle of beer on the wall!
# => 1 bottle of beer on the wall, 1 bottle of beer!
# => Take one down, pass it around, no more bottles of beer on the wall!