def register_data(units)
  unit = {}
  puts '名前を入力してください'
  unit[:name] = gets.chomp
  puts 'パンチ力を入力してください(0 ~ 100)'
  unit[:punch] = power(gets.to_i.abs)
  puts 'キック力を入力してください(0 ~ 100)'
  unit[:kick] = power(gets.to_i.abs)
  puts 'ジャンプ力を入力してください(0 ~ 100)'
  unit[:jump] = power(gets.to_i.abs)

  fighting_strength = unit[:punch] + unit[:kick] + unit[:jump]
  unit[:rank] = hero_rank(fighting_strength)

  units << unit
end

def power(power)
  while power > 100
    puts "100以下の数字を入力してください"
    power = gets.to_i.abs
  end
  return power
end

def hero_rank(fighting_strength)
  if fighting_strength >= 250
    return "S"
  elsif fighting_strength >= 200
    return "A"
  elsif fighting_strength >= 150
    return "B"
  else
    return "C"
  end
end

def show_data_list(units)
  puts '見たい人の番号を選択してください'
  units.each_with_index do |unit, index|
    puts "#{index + 1}:#{unit[:name]}"
  end

  num = gets.to_i
  show_data_unit(units[num - 1])
end

def show_data_unit(unit)
  puts "名前:#{unit[:name]}"
  puts "パンチ力:#{unit[:punch]}"
  puts "キック力:#{unit[:kick]}"
  puts "ジャンプ力:#{unit[:jump]}"
  puts "ヒーローランク:#{unit[:rank]}"
end

units = []

while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    register_data(units)
  elsif input == 1
    show_data_list(units)
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end