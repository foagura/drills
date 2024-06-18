def lone_sum(ary)
  i = 0
  ary.each do |num|
    if ary.count(num) <= 1
      i += num
    end
  end
  puts i
end

lone_sum([1, 2, 3])# → 6
lone_sum([3, 2, 3])# → 2
lone_sum([3, 3, 3])# → 0