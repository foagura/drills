def fizzbuzz(max_num)
  max_num.each do |num|
    if num % 15 == 0
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    else
      puts num
    end
  end
end

puts 'いくつまで数えますか？'
num = gets.to_i
fizzbuzz(1..num)