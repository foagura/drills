def ten_times(nums)
  nums.times do |i|
    i += 1
    puts "#{i}回目の繰り返し"
  end
end

ten_times(gets.to_i)