def near_ten(num)
  one = num % 10
  ten = (num / 10) % 10
  hundred = (num / 100) % 10
  sum = one + ten + hundred

  if (sum % 10 <= 2) || (sum % 10 >= 8)
    puts "True"
  elsif (sum % 10) > 5
    puts "10の倍数との差は#{((sum % 10) - 10).abs}です"
  else
    puts "10の倍数との差は#{sum % 10}です"
  end
end

near_ten(117)#→True
near_ten(123)#→10の倍数との差は4です
near_ten(111)#→10の倍数との差は3です