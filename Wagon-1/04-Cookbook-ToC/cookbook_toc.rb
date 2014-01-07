title = "Recettes de kiffeur\n"

chapters = [ 
             ['Materiel pour cuisiner', 1],
             ['Produits de saison', 8],
             ['Sauces et soupes', 19],
             ['Viandes et Gibiers', 38],
             ['Poissons, coquillages et crustaces', 157]
           ]
           
# You program goes here !

puts title.center(50) 

chapters.each do |x, y|
	print "Chapitre #{chapters.index([x, y]) + 1}:".ljust(15) 
	print "#{x}".ljust(50)
	puts "page #{y}".rjust(10)
end