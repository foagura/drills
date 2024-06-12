def extra_end(str)
  puts str.slice(-2, 2)
end

extra_end('Hello')# → 'lololo'
extra_end('ab')# → 'ababab'
extra_end('Hi')# → 'HiHiHi'