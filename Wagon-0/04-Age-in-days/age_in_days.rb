def age_in_days(day, month, year)
t1 = (Time.now).- Time.new(year, month, day)

t2 = t1./(83400)

return t2.to_i

end


# Testing your code
puts age_in_days(6, 11, 1985)