def subway
	puts "good boy ! Take the subway, it will be faster"
	answer = gets.chomp

	if answer.end_with? "?"
		puts "Silly question, take the subway and go to work !"

	else 
		puts "I don't care son, take the subway and go to work !"
		
	end
end

def upcase?(char)
	return true if char===char.upcase
end

def stupid_coaching 
puts "Hey, tell me something."
answer = gets.chomp

	until answer == "I am going to work right now sir !"
	answer = gets.chomp

	  if answer.end_with? "?"
	  	puts "Silly question, get dressed and go to work"

	  elsif upcase? answer
	  	puts "I can feel your motivation son!"
	  		
	  elsif answer == "I am going to work." 
	  	subway

	  else puts "I don't care son, get dressed and go to work !"
	  	
	  end
	  
	end
	puts "Good!"
end

# Calling the method
stupid_coaching