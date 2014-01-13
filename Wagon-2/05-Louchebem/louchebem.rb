
def louchebem(word)
	word.split('').each_with_index do |letter, index|
	 	if %w(a e i o u y).include? letter
	 		return "L" + word[index..-1] + word[0..index-1] + %w(em oc iche uche truc).shuffle[0]
	 end
	end
end

puts "Quel mot voulez-vous traduire ?"
sentence = gets.chomp
puts louchebem(sentence)