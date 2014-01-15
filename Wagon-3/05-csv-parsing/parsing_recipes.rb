require 'csv'

module Recipes

	@array = []

	#Calling the file
		CSV.foreach("recipes.csv") do |row|
	  @array << row
	  @array
	end

	# Creating columns with the first line and lines
	@columns = @array[0].map {|x| x.to_sym}
	@rows = @array[1..@array.length-1]

	# # Creating hashes with our lines, having the columns as keys.
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
		categories = @correlated.map {|n| "- " + n[:category]}.uniq
	end

	# Returns a list of every plate in a category
	def self.plat(answer)
			plats = @correlated.find_all {|f| f[:category] == answer}.map {|n| "- " + n[:recipe]}
	end

	# Returns a recipe
	def self.recipe_finder(line)
			correct_hash = @correlated.detect {|f| f[:recipe] == line }
			puts "
			************************************
			difficulte: #{correct_hash[:difficulty]}
			preparation: #{correct_hash[:preparation]} minutes
			cuisson: #{correct_hash[:time]} minutes
			************************************"
	end

	def self.show
		@correlated.map {|x| x[:category]}.uniq
	end

end

### En plus court :
#correlated = rows.map{|r| Hash[ *r.zip(columns).flatten ] }

puts Recipes.show

# puts "Nous avons des recettes pour :"
# puts Recipes.categories
# puts "Quelle categorie vous interesse ?"
# plat_answer = gets.chomp.gsub(/\w+/, &:capitalize)

# puts "Super ! Pour cette categorie nous avons ces recettes : "
# puts Recipes.plat(plat_answer)

# puts "Quelle recette voulez-vous voir ?"
# recipe_answer = gets.chomp.gsub(/\w+/, &:capitalize)

# puts Recipes.recipe_finder(recipe_answer)


# [
# 	{:recipe=>"Poule Au Pot", :category=>"Plat Principal", :preparation=>"20", :time=>"90", :difficulty=>"facile"}, 
# 	{:recipe=>"Lotte A L'Armoricaine", :category=>"Plat Principal", :preparation=>"30", :time=>"120", :difficulty=>"difficile"}, 
# 	{:recipe=>"Sauce Hollandaise", :category=>"Sauce", :preparation=>"15", :time=>"5", :difficulty=>"tres difficile"}, 
# 	{:recipe=>"Mayonnaise", :category=>"Sauce", :preparation=>"10", :time=>"0", :difficulty=>"difficile"}, 
# 	{:recipe=>"Bar Roti", :category=>"Plat Principal", :preparation=>"15", :time=>"60", :difficulty=>"facile"}, 
# 	{:recipe=>"Vinaigrette", :category=>"Sauce", :preparation=>"10", :time=>"0", :difficulty=>"facile"}, 
# 	{:recipe=>"Sauce Cocktail", :category=>"Sauce", :preparation=>"10", :time=>"0", :difficulty=>"difficile"}, 
# 	{:recipe=>"Boeuf Bourguignon", :category=>"Plat Principal", :preparation=>"30", :time=>"150", :difficulty=>"tres difficile"}, 
# 	{:recipe=>"Poulet Basquaise", :category=>"Plat Principal", :preparation=>"20", :time=>"60", :difficulty=>"facile"}, 
# 	{:recipe=>"Pot-Au-Feu", :category=>"Plat Principal", :preparation=>"20", :time=>"180", :difficulty=>"tres difficile"}, 
# 	{:recipe=>"Couteaux A La Plancha", :category=>"Plat Principal", :preparation=>"0", :time=>"5", :difficulty=>"tres difficile"}, 
# 	{:recipe=>"Charlotte Aux Fraises", :category=>"Dessert", :preparation=>"30", :time=>"60", :difficulty=>"tres difficile"}, 
# 	{:recipe=>"Frisee Aux Lardons", :category=>"Entree", :preparation=>"10", :time=>"10", :difficulty=>"facile"}, 
# 	{:recipe=>"Oeufs Mimosa", :category=>"Entree", :preparation=>"10", :time=>"0", :difficulty=>"facile"}
# ]