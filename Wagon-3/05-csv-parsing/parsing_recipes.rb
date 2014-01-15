require 'csv'

module Recipes

	@array = []

	#Calling the file
		CSV.foreach("recipes.csv") do |row|
	  @array << row
	  @array
	end

	# Creating columns with the first line and lines
	@columns = @array[0]
	@rows = @array[1..@array.length]

	# Creating hashes with our lines, having the columns as keys.
	@correlated = []
	(0...@rows.length).each do|row|
		h = {}
			(0...@columns.length).each do|column|
			h[@columns[column]] = @rows[row][column]
		end

			@correlated << h
	end

	# Returns a category list
	def self.categories
		categories = @correlated.map {|n| "- " + n["category"]}.uniq
	end

	# Returns a list of every plate in a category
	def self.plat(answer)
			plats = @correlated.find_all {|f| f["category"] == answer}.map {|n| "- " + n["recipe"]}
	end

	# Returns a recipe
	def self.recipe_finder(line)
			correct_hash = @correlated.detect {|f| f["recipe"] == line }
			puts "
			************************************
			difficulte: #{correct_hash["difficulty"]}
			preparation: #{correct_hash["preparation"]} minutes
			cuisson: #{correct_hash["time"]} minutes
			************************************"
	end
end

### En plus court :
#correlated = rows.map{|r| Hash[ *r.zip(columns).flatten ] }

puts "Nous avons des recettes pour :"
puts Recipes.categories
puts "Quelle categorie vous interesse ?"
plat_answer = gets.chomp.gsub(/\w+/, &:capitalize)

puts "Super ! Pour cette categorie nous avons ces recettes : "
puts Recipes.plat(plat_answer)

puts "Quelle recette voulez-vous voir ?"
recipe_answer = gets.chomp.gsub(/\w+/, &:capitalize)

puts Recipes.recipe_finder(recipe_answer)

# [
# 	0{"recipe"=>"Poule Au Pot", "category"=>"Plat Principal", "difficulty"=>"20", "time"=>"90", "cooking"=>"1"}, 
# 	1{"recipe"=>"Lotte a l'armoricaine", "category"=>"Plat Principal", "difficulty"=>"30", "time"=>"120", "cooking"=>"2"},
# 	2{"recipe"=>"Sauce hollandaise", "category"=>"Sauce", "difficulty"=>"15", "time"=>"5", "cooking"=>"3"},
#   3{"recipe"=>"Mayonnaise", "category"=>"Sauce", "difficulty"=>"10", "time"=>"0", "cooking"=>"2"},
#   4{"recipe"=>"Bar roti", "category"=>"Plat Principal", "difficulty"=>"15", "time"=>"60", "cooking"=>"1"}, 
#   5{"recipe"=>"Vinaigrette", "category"=>"Sauce", "difficulty"=>"10", "time"=>"0", "cooking"=>"1"}, 
#   6{"recipe"=>"Sauce cocktail", "category"=>"Sauce", "difficulty"=>"10", "time"=>"0", "cooking"=>"2"}, 
#   7{"recipe"=>"Boeuf bourguignon", "category"=>"Plat Principal", "difficulty"=>"30", "time"=>"150", "cooking"=>"3"}, 
#   8{"recipe"=>"Poulet basquaise", "category"=>"Plat Principal", "difficulty"=>"20", "time"=>"60", "cooking"=>"1"}, 
#   9{"recipe"=>"Pot-au-feu", "category"=>"Plat Principal", "difficulty"=>"20", "time"=>"180", "cooking"=>"3"}, 
#   10{"recipe"=>"Couteaux a la plancha", "category"=>"Plat Principal", "difficulty"=>"0", "time"=>"5", "cooking"=>"3"}, 
#   11{"recipe"=>"Charlotte aux fraises", "category"=>"Dessert", "difficulty"=>"30", "time"=>"60", "cooking"=>"3"}, 
#   12{"recipe"=>"Frisee aux lardons", "category"=>"Entree", "difficulty"=>"10","time"=>"10", "cooking"=>"1"}, 
#   13{"recipe"=>"\xC3\x8Eufs mimosa", "category"=>"Entree", "difficulty"=>"10", "time"=>"0", "cooking"=>"1"}
# ]