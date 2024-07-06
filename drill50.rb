def calorie_calculation
  puts "500kcal"
end

while true do
  puts "[0]:カロリーを表示する、[1]:終了する"
  num = gets.to_i
  if num == 0
    calorie_calculation
  elsif num == 1
    exit
  else
    puts "[0]か[1]のどちらかを入力してください"
  end
end