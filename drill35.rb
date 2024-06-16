def near_ten(num)
  num_one = num % 10
  if num_one <= 2 || num_one >= 8
    puts "True"
  else
    puts "False"
  end
end

near_ten(12)# → True
near_ten(17)# → False
near_ten(19)# → True
near_ten(99)
near_ten(75)
near_ten(37)