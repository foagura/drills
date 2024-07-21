def register_data(cars)
  car = {}
  puts "車種を入力してください"
  car[:model] = gets.chomp
  puts "1Lあたりの走行可能距離(km/l)を入力してください"
  car[:travel_distance] = gets.to_f
  puts "乗車可能人数を入力してください"
  car[:capacity] = gets.to_i
  
  cars << car
end

def show_data_list(cars)
  puts "見たい車種を番号で選んでください"
  cars.each_with_index do |car, index|
    puts "#{index + 1}:#{car[:model]}"
  end

  num = gets.to_i
  show_data(cars[num - 1])
end

def show_data(car)
  puts "車種:#{car[:model]}"
  puts "走行可能距離(km/l):#{car[:travel_distance]}"
  puts "乗車可能人数:#{car[:capacity]}"
end

cars = []

while true
  puts "[0]データの登録"
  puts "[1]データの確認"
  puts "[2]プログラムの終了"
  input = gets.to_i
  
  if input == 0
    register_data(cars)
  elsif input == 1
    show_data_list(cars)
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end