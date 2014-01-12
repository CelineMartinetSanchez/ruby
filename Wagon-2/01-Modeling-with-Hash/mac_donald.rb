# ARRAY SOLUTION

 def calories_finder(burger, side, beverage)
  junk_food = [ "Cheese Burger", "Big Mac", "Mc Bacon", "Royal Cheese", "French Fries", "Potatoes", "Coca", "Sprite" ]
  calories = [290, 300, 400, 130, 130, 130, 160, 170]

  calories[junk_food.index(burger)] + calories[junk_food.index(side)] + calories[junk_food.index(beverage)]
end


# HASH SOLUTION

def calories_finder2(burger, side, beverage)
  junk_food = { 
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French Fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170 
  }

  junk_food[burger] + junk_food[side] + junk_food[beverage]

end

puts calories_finder2("Cheese Burger", "Big Mac", "Potatoes")


puts "What is your burger? (Cheese Burger, Big Mac, Mc Bacon or Royal Cheese)"
burger = gets.chomp

puts "What is your side? (French Fries or Potatoes)"
side = gets.chomp

puts "What is your beverage? (Coca or Sprite)"
beverage = gets.chomp

puts "Thanks MacDo, you're now bigger!"
puts "You ate #{calories_finder(burger, side, beverage)} calories."
puts "You ate #{calories_finder2(burger, side, beverage)} calories."