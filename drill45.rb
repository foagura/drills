def rand_judgment(num)
  if num < 5
    puts "#{num}は5より小さい!"
  else
    puts "#{num}は4より大きい!"
  end
end

num = rand(10)
rand_judgment(num)