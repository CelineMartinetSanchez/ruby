# Very dirty code to make some dirty gym...
def hop_hop_hop(number_of_exercises)
  for i in (1..number_of_exercises) do 
    counter = 0
    until counter == i do
      print "hop! "
      counter += 1
    end
    unless counter != i # Test if reaching the end of the current exercise.
      # Prints message in that case    
      print 'Encore une fois..' + "\n"
    end  
    # Reset counter to 0 for the next exercise
    counter = 0
  end
end

def hop_hop(number_of_exercises)
  counter = 1
  1.upto(number_of_exercises) {puts yield(counter); counter +=1 }
end


hop_hop_hop(6)
hop_hop(6) {|n| " hop! " * n + "Encore une fois !"}