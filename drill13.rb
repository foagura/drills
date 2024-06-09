fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

fruits_price.each do |fruit|
  puts "#{fruit[0]}の合計金額は#{fruit[1].sum}です"
end