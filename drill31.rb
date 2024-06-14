def end_other(a, b)
  a = a.downcase
  b = b.downcase
  a_slice = a.slice(-3..-1)
  b_slice = b.slice(-3..-1)
  if a.include?(b_slice) || b.include?(a_slice)
    puts "True"
  else
    puts "False"
  end
end

end_other('Hiabc', 'abc')# → True
end_other('AbC', 'HiaBc')# → True
end_other('abc', 'HaIoBc')# → False