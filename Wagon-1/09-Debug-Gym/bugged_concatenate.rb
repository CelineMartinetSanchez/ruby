def bugged_concatenate(*array)
  # 2. fix the code: TypeError
  array = array[0] if array.length == 1 and array[0].is_a?(Array)
  puts array.inject("") { |output, element| output + element.to_s }.upcase
	
end


# 1. fix the method call: ArgumentError
print bugged_concatenate( [1, "9", 84, " ", "George Orwell"])

print bugged_concatenate("Simply happy ", 4, " the weather is", " fine")

