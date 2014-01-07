
def input_student(students_array)
	while true
		puts "What's the name of your student? (press enter when you finish)"
		new_student = gets.chomp
		break if new_student.empty?
		students_array << new_student
	end
end

def wagon_sort( students_array )
  students_array.sort {|a, b| a.downcase <=> b.downcase}
end

# your code to interact with the user..
students_array = Array.new
input_student(students_array)
puts "Bravo! You added the following students:"
wagon_sort(students_array).each {|name| puts name}