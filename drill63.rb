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

  puts "走行する距離を入力してください"
  mileage = gets.to_f
  mileage_calculator(car, mileage)

  puts "乗車する人数を入力してください"
  number = gets.to_i.abs
  headcount_calculator(car, number)
end

def mileage_calculator(car, mileage)
  puts "消費するガソリンの量は#{(mileage / car[:travel_distance]).round(2)}Lです"
end

def headcount_calculator(car, number)
  capacity = car[:capacity] - number
  if capacity == 0
    puts "定員数ちょうどです"
  elsif capacity > 0
    puts "あと#{capacity}人乗車できます!"
  else
    puts "乗車人数を#{capacity.abs}人オーバーしています!"
  end
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