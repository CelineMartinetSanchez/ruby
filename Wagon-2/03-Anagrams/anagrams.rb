def anagrams?( a_string, another_string )
  # Transform in downcase, then split into letters without blank spaces and then sort fram a to z.
  # Compare both arrays.
  n = a_string.downcase.split(%r{\s*}).sort
  m = another_string.downcase.split(%r{\s*}).sort
  n == m
end

def anagrams_on_steroids?( a_string, another_string )
	hash1 = Hash.new { |h, k| h[k] = 0 }
	hash2 = Hash.new { |h, k| h[k] = 0 }
	a_string.downcase.split(%r{\s*}).each {|x| hash1[x]+=1}
	another_string.downcase.split(%r{\s*}).each {|x| hash2[x]+=1}

	hash1 == hash2

end

# complexity = ?
puts anagrams?("Monica Lewinsky", "Nice silky woman") # => true 

# complexity = ?
puts anagrams_on_steroids? "Monica Lewinsky", "Nice silky woman" # => true