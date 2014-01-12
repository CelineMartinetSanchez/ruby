def transform_to_i(int)
	int.map { |x| x.to_i}
end

def transform_to_i!(int)
	int.map! { |x| x.to_i}
end

def tri(int)
	int.sort {|x, y| y <=> x}
end

def tri!(int)
	int.sort! {|x, y| y <=> x}
end

# Copy / Paste this example here !

puts "Type a number"
numbers = []
numbers_2 = []


while true
	answers = gets.chomp
	numbers_2 = numbers.dup
	break if answers.empty?
	numbers << answers
end



puts "Je suis incassable."
puts "---> Array classee : #{tri(transform_to_i(numbers))}"
puts "---> Array enregistree (output) : #{transform_to_i(numbers)}"
puts
puts "!!! Moi je casse tout !!!"
puts "---> Array classee : #{tri!(transform_to_i!(numbers_2))}"
puts "---> Array enregistree (output) : #{numbers_2}"