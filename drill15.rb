def output(num)
  num.times do
    puts "Hello!"
  end
end

puts "何回表示させますか？"

output(gets.to_i)