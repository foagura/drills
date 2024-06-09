def missing_char(str, n)
  str.slice!(n)
  puts "#{str}"
end

missing_char('kitten', 2..5)