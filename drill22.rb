def count_evens(nums)
  i = 0
  nums.each do |num|
    if num.even?
      i += 1
    end
  end
  puts "偶数が#{i}個あります"
end

count_evens([2, 1, 2, 3, 4]) #→ 3
count_evens([2, 2, 0]) #→ 3
count_evens([1, 3, 5]) #→ 0