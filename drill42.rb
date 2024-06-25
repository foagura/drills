def multiplication(nums)
  puts "入力した数字を掛け合わせた数字は#{nums[0] * nums[1]}です"
end

puts "数字を2回入力してください"
nums = [ gets.to_i, gets.to_i ]
multiplication(nums)