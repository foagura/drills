def array_count9(nums)
  puts "配列の中には9が#{nums.count(9)}個です"
end

array_count9([1, 2, 9])# → 配列の中には9が1個です
array_count9([1, 9, 9])# → 配列の中には9が2個です
array_count9([1, 9, 9, 3, 9])# → 配列の中には9が3個です